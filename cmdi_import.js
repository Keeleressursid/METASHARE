var assert   = require('assert')
var fs       = require('fs')
var util     = require('util')

var xml2js = require('xml2js')
  , parseString = xml2js.parseString

var EntuLib  = require('./entulib/javascript/entulib.js')
var stringifier = require('./stringifier.js')


var myArgs = process.argv.slice(2);
assert.strictEqual(typeof(myArgs[0]), 'string'
            , "Your Entu ID should be passed as first argument from commandline. " + typeof(myArgs[1]))
assert.strictEqual(typeof(myArgs[1]), 'string'
            , "Your Entu API key should be passed as 2nd argument from commandline.")
assert.strictEqual(typeof(myArgs[2]), 'string'
            , "CMDI file name should be passed as 3rd argument from commandline.")
assert.strictEqual(myArgs[3], undefined
            , "If you have spaces in file name on Entu API key, please \"enquote\" them.")
assert.ok(fs.existsSync(myArgs[2])
            , "There is no file at \"" + myArgs[2] + "\"")

var CMDI_FILENAME = myArgs[2]
var ENTU_USER_ID = myArgs[0]
var ENTU_USER_KEY = myArgs[1]
var ENTU_URL = 'devm.entu.ee'
var CREATED_BY = 'definition_import'
var EntuLib = new EntuLib(ENTU_USER_ID, ENTU_USER_KEY, ENTU_URL)

var elementType = function elementType(element) {
    if (typeof element === 'object')
        return 'entity'
    else
        return typeof element
}

var findByAttribute = function findByAttribute(callback, arr, key, val) {
    arr.forEach(function(o) {
        if (o['$'][key] == val) {
            callback(o)
        }
    })
}

var findByAttributeSync = function findByAttributeSync(arr, key, val) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i]['$'][key] === val) {
            return arr[i]
        }
    }
    throw new Error('MALFORMED_XSD: findByAttributeSync didnt found ' + key + ':' + val)
}


var mysql = []
var mysql_file = fs.createWriteStream('./import_definitions.sql');

var elem_cnt = 0
var parsed_xml = {}

var xs_types = { 'xs:string':'string'
               , 'xs:anyURI':'string'
               , 'xs:ID':'string'
               , 'xs:IDREF':'string'
               , 'xs:IDREFS':'string'
               , 'xs:gYear':'string'
               , 'xs:date':'datetime'
               , 'xs:boolean':'boolean'
               , 'xs:int':'integer' }

var defineProperties = function defineProperties(elem_arr, parent_name) {
    for (var ei = 0; ei < elem_arr.length; ei++) {
        var element = elem_arr[ei]

        if (element['$'] === undefined)
            throw new Error('Element has no attributes: ' + util.inspect(element))
        if (element['$']['name'] === undefined)
            throw new Error('Element has no name attribute: ' + util.inspect(element))

        var property_definition = {   'keyname':                   "'" + parent_name + '-' + element['$']['name'] + "'"
                                    , 'entity_definition_keyname': "'" + parent_name                              + "'"
                                    , 'dataproperty':              "'" + element['$']['name']                     + "'"
                                  }

        if (element['$']['type'] === undefined) {
            property_definition['datatype'] = "'reference'"

        // if element is of known datatype and not a reference property
        } else if (Object.keys(xs_types).indexOf(element['$']['type']) > -1) {
            property_definition['datatype'] = "'" + xs_types[element['$']['type']] + "'"

        } else if (element['$']['type'].substring(0,15) === 'cmd:complextype') {
            property_definition['datatype'] = "'reference'"
            // element['xs:complexType'] = [findByAttributeSync(parsed_xml['xs:complexType'], 'name', element['$']['type'].substring(4))]
        } else {
            throw new Error('Entity with unknown datatype: ' + util.inspect(property_definition))
        }

        // Exception made for maldefined element CMD->ResourceRelation->RelationType
        if (element['xs:complexType'] === undefined) {
            if (parent_name === 'ResourceRelation' && element['$']['name'] === 'RelationType') {
                console.log('Dead end - no complexType for ' + util.inspect(element, {depth:6}))
                property_definition['datatype'] = "'string'"
            }
        }

        if (property_definition === undefined) {
            throw new Error ('No property_definition for : ' + util.inspect(element, {depth:6}))
        }

        if (property_definition['datatype'] === "'reference'") {
            if (element['xs:complexType'] !== undefined) {
                element['xs:complexType'].forEach(function(ct_el) {
                    if (ct_el['xs:sequence'] !== undefined) {
                    } else if (ct_el['xs:simpleContent'] !== undefined) {
                        // console.log('xs:simpleContent: ' + util.inspect(element,{depth:6}))
                        type = ct_el['xs:simpleContent'][0]['xs:extension'][0]['$']['base']
                        if (Object.keys(xs_types).indexOf(type) > -1) {
                            property_definition['datatype'] = "'" + xs_types[type] + "'"
                        }
                    } else if (ct_el['xs:attribute'] !== undefined) {
                        if (ct_el['xs:attribute'][0]['$'] === undefined) throw new Error (util.inspect(element,{depth:6}))
                        type = ct_el['xs:attribute'][0]['$']['name']
                        property_definition['datatype'] = "'" + xs_types[type] + "'"
                        // console.log('xs:attribute: ' + util.inspect(element,{depth:6}))
                    } else {
                        throw new Error ('Unrecognized complexType: ' + util.inspect(element,{depth:6}))
                    }
                })
            }
            else throw new Error ('Reference has no complexType: ' + parent_name + '.' + util.inspect(element,{depth:6}))
        }

        if (property_definition['datatype'] === "'reference'")
            property_definition['classifying_entity_definition'] = property_definition['dataproperty']


        // Create SQL for new property_definition
        var keys = Object.keys(property_definition)
        var values = []
        for (var i = 0; i < keys.length; i++)
            values.push(property_definition[keys[i]])

        mysql.push('INSERT INTO property_definition (' + keys.join(', ') + ') ' + 'VALUES (' + values.join(', ') + ');')
    }
}

var parseElement = function parseElement(elem_arr, parent_name) {

    // Create root definition
    if (parent_name === undefined) {
        mysql.push('INSERT INTO entity_definition (keyname, created, created_by) VALUES (\'' + elem_arr[0]['$']['name'] + '\', now(), \'' + CREATED_BY + '\');')
        parseElement(elem_arr[0]['xs:complexType'][0]['xs:sequence'][0]['xs:element'], elem_arr[0]['$']['name'])
        return
    }

    console.log('-- ' + parent_name + ': ' + typeof elem_arr + ' : ' + (elem_cnt += 1))

    elem_arr.forEach(function(element) {
        var is_reference

        // console.log('parseElement: ' + util.inspect(element,{depth:7}))
        if (element['$'] === undefined)
            throw new Error('Element has no attributes: ' + util.inspect(element))
        if (element['$']['name'] === undefined)
            throw new Error('Element has no name attribute: ' + util.inspect(element))

        if (element['$']['type'] === undefined) {
            is_reference = true
        // if element is of known datatype and not a reference property
        } else if (Object.keys(xs_types).indexOf(element['$']['type']) > -1) {
            is_reference = false
        // If element is of ComplexType, then inject it
        } else if (element['$']['type'].substring(0,15) === 'cmd:complextype') {
            is_reference = true
            element['xs:complexType'] = [findByAttributeSync(parsed_xml['xs:complexType'], 'name', element['$']['type'].substring(4))]
        } else {
            throw new Error('Property with unknown datatype: ' + util.inspect(element))
        }

        // Exception made for maldefined element CMD->ResourceRelation->RelationType
        if (element['xs:complexType'] === undefined) {
            if (parent_name === 'ResourceRelation' && element['$']['name'] === 'RelationType') {
                console.log('Dead end - no complexType for ' + util.inspect(element, {depth:6}))
                is_reference = false
            }
        }

        if (is_reference) {
            if (element['xs:complexType'] !== undefined) {
                element['xs:complexType'].forEach(function(ct_el) {
                    if (ct_el['xs:sequence'] !== undefined) {
                        ct_el['xs:sequence'].forEach(function(sq_el) {
                            mysql.push('\nINSERT INTO entity_definition (keyname, created, created_by) VALUES (\'' + element['$']['name'] + '\', now(), \'' + CREATED_BY + '\');')
                            parseElement(sq_el['xs:element'], element['$']['name'])
                        })
                    } else if (ct_el['xs:simpleContent'] !== undefined) {
                        // console.log('xs:simpleContent: ' + util.inspect(element,{depth:6}))
                    } else if (ct_el['xs:attribute'] !== undefined) {
                        // console.log('xs:attribute: ' + util.inspect(element,{depth:6}))
                    } else {
                        throw new Error ('Unrecognized complexType: ' + util.inspect(element,{depth:6}))
                    }
                })
            }
            else throw new Error ('Reference has no complexType: ' + parent_name + '.' + util.inspect(element,{depth:6}))
        }
    })

    defineProperties(elem_arr, parent_name)
}

var xml = fs.readFileSync(CMDI_FILENAME)
parseString(xml, function (err, result) {
    parsed_xml = result['xs:schema']
    var elem_arr = result['xs:schema']['xs:element']
    parseElement(result['xs:schema']['xs:element'], undefined)
    mysql_file.write(mysql.join('\n'))

})

