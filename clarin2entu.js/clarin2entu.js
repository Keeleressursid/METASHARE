var fs       = require('fs')
var util     = require('util')
var assert   = require('assert')
var events   = require('events')


var schema_dir = '../Resource Types/'

var resource_types = []
var entity_definitions = []
var classifiers = {}
var mysql = []

var CMD_roots = ['corpusInfo', 'languageDescriptionInfo', 'lexicalConceptualResourceInfo', 'toolServiceInfo']


console.log('\n\n\n===== ' + Date.now()/1000 + ' == START ============')

fs.readdirSync(schema_dir).forEach(function(filename) {
    var nameparts = filename.split('.')
    if (nameparts[nameparts.length-1] === 'json') {
        var resource_name = filename.substring(0,filename.length-5)
        console.log(' Read ' + resource_name + ' from ' + filename)
        data = fs.readFileSync(schema_dir + filename)
        resource_types.push({'resource_name':resource_name, 'CMD_root':JSON.parse(data).CMD_ComponentSpec.CMD_Component})
    }
})
//
// Resource types are loaded
//

function indexByKeyVal(source, key, val) {
    for (var i = 0; i < source.length; i++)
        if (source[i][key] === val)
            return i
    return -1
}
function getByKeyname(keyname) {
    return entity_definitions[indexByKeyVal(entity_definitions, 'keyname', keyname)]
}

var stringifier = function(o) {
    var cache = [];
    return JSON.stringify(o, function(key, value) {
        if (typeof value === 'object' && value !== null) {
            if (cache.indexOf(value) !== -1) {
                // Circular reference found, replace key
                if (value.weight === 1) {
                    return value.datatype + (value.validator.length > 0 ? ' [' + value.validator.join('|') + ']' : '')
                }
                return 'reference'
                // return 'Reference to ' + value.keyname + ' [w:' + value.weight  + ']'
            }
            // Store value in our collection
            cache.push(value)
        }
        return value
    }, '\t')
}

var parseElementRec = function parseElementRec(parent_element_name, CMD_Element) {
    var element = {}
    element.keyname = CMD_Element['@name']
    element.weight = 1
    element.mandatory = CMD_Element['@CardinalityMin'] === "0" ? false : true
    element.listproperty = CMD_Element['@CardinalityMax'] === "1" ? false : true
    element.datatype = ''
    element.validator = []
    element.usage = []
    // element.mysql = []

    var addUsage = function addUsage(child, parent_element_name) {
        if (child.usage.indexOf(parent_element_name) === -1)
            child.usage.push(parent_element_name)
    }

    var addValidator = function addValidator(items, element) {
        if (items.length === undefined)
            items = [items]
        items.forEach(function(item) {
            var validator_item = {'item':item['#text'], 'AppInfo':(item['@AppInfo'] === undefined ? '' : item['@AppInfo'])}
            if (indexByKeyVal(element.validator, 'item', item['#text']) === -1) {
                element.validator.push(validator_item)
            }
        })
        // console.log('- ' + util.inspect(element.validator))
    }

    var idx = indexByKeyVal(entity_definitions, 'keyname', element.keyname)
    if (idx > -1) {
        element = entity_definitions[idx]
        addUsage(element, parent_element_name)
        if (element.datatype === 'enumeration') {
            addValidator(CMD_Element.ValueScheme.enumeration.item, element)
        }
        return entity_definitions[idx]
    }
    addUsage(element, parent_element_name)

    if (CMD_Element.ValueScheme === undefined)
        CMD_Element.ValueScheme = CMD_Element['@ValueScheme']
    if (CMD_Element.ValueScheme === undefined)
        throw(util.inspect(CMD_Element))
    if (CMD_Element.ValueScheme === 'string') {
        element.datatype = 'string'
    } else if (CMD_Element.ValueScheme.pattern !== undefined) {
        element.datatype = 'string'
        element.validator.push(CMD_Element.ValueScheme.pattern)
    } else if (CMD_Element.ValueScheme === 'gYear') {
        element.datatype = 'integer'
    } else if (CMD_Element.ValueScheme === 'int') {
        element.datatype = 'integer'
    } else if (CMD_Element.ValueScheme === 'boolean') {
        element.datatype = 'boolean'
    } else if (CMD_Element.ValueScheme === 'date') {
        element.datatype = 'date'
    } else if (CMD_Element.ValueScheme.enumeration !== undefined) {
        element.datatype = 'enumeration'
        addValidator(CMD_Element.ValueScheme.enumeration.item, element)
    }
    entity_definitions.push(element)
    return element
}

var parseComponentRec = function parseComponentRec(parent_element_name, CMD_Component) {
    if (CMD_Component === undefined)
        throw(util.inspect(CMD_Component))

    var element = {}
    element.keyname = CMD_Component['@name']
    element.weight = 0.001
    element.mandatory = CMD_Component['@CardinalityMin'] === "0" ? false : true
    element.listproperty = CMD_Component['@CardinalityMax'] === "1" ? false : true
    // element.datatype = 'entity'
    // element.validator = ''
    element.usage = []
    element.properties = {}
    // element.mysql = []

    // if (entity_definitions[element.keyname] !== undefined)
    //     return entity_definitions[element.keyname]
    var idx = indexByKeyVal(entity_definitions, 'keyname', element.keyname)
    if (idx > -1) {
        if (entity_definitions[idx].usage.indexOf(parent_element_name) === -1) {
            entity_definitions[idx].usage.push(parent_element_name)
        }
        return entity_definitions[idx]
    }

    if (element.usage.indexOf(parent_element_name) === -1)
        element.usage.push(parent_element_name)

    entity_definitions.push(element)

    if (CMD_Component.CMD_Element !== undefined) {
        if (CMD_Component.CMD_Element.length === undefined)
            CMD_Component.CMD_Element = [CMD_Component.CMD_Element]
        CMD_Component.CMD_Element.forEach(function(el) {
            var subelement = parseElementRec(element.keyname, el)
            element.weight = Math.round((element.weight + subelement.weight)*1000)/1000
            element.properties[subelement.keyname] = subelement.datatype
        })
    }

    if (CMD_Component.CMD_Component !== undefined) {
        if (CMD_Component.CMD_Component.length === undefined)
            CMD_Component.CMD_Component = [CMD_Component.CMD_Component]
        CMD_Component.CMD_Component.forEach(function(el) {
            var subelement = parseComponentRec(element.keyname, el)
            element.weight = Math.round((element.weight + subelement.weight)*1000)/1000
            element.properties[subelement.keyname] = subelement
        })
    }
    return element
}

// var setPropertyType = function setPropertyType(value_scheme) {
//     if (element)
//     return definition
// }

resource_types.forEach(function(resource_type) {
    var CMD_root = resource_type.CMD_root
    // console.log(util.inspect(CMD_root))
    console.log('\n===== ' + Date.now()/1000 + ' == Parse ' + resource_type.resource_name + ' ============')
    parseComponentRec(resource_type.resource_name, CMD_root)
})
entity_definitions.sort(function(a,b) {
    return a.weight - b.weight
})

entity_definitions.forEach(function(entity_definition) {
    if (entity_definition.weight === 1) {
        if (entity_definition.datatype === 'enumeration') {
            // console.log('adding mysql to ' + entity_definition.keyname)
            mysql.push("INSERT INTO entity_definition SET keyname = 'CL" + entity_definition.keyname + "', created = now();")
            mysql.push("INSERT INTO property_definition SET keyname = 'CL" + entity_definition.keyname + "-name', entity_definition_keyname = 'CL" + entity_definition.keyname + "', dataproperty = 'name', datatype = 'string', ordinal = 1, public = 1, mandatory = 1, search = 1, created = now();")
            mysql.push("INSERT INTO property_definition SET keyname = 'CL" + entity_definition.keyname + "-description', entity_definition_keyname = 'CL" + entity_definition.keyname + "', dataproperty = 'description', datatype = 'text', ordinal = 2, public = 1, mandatory = 0, search = 1, created = now();")
            mysql.push("INSERT INTO translation SET entity_definition_keyname = 'CL" + entity_definition.keyname + "', field = 'label', value = '" + entity_definition.keyname + "';")
            mysql.push("INSERT INTO translation SET entity_definition_keyname = 'CL" + entity_definition.keyname + "', field = 'label_plural', value = '" + entity_definition.keyname + "';")
            mysql.push("INSERT INTO translation SET entity_definition_keyname = 'CL" + entity_definition.keyname + "', field = 'displayname', value = '@name@';")
            mysql.push("INSERT INTO translation SET entity_definition_keyname = 'CL" + entity_definition.keyname + "', field = 'displayinfo', value = '@description@';")
            mysql.push("INSERT INTO translation SET entity_definition_keyname = 'CL" + entity_definition.keyname + "', field = 'sort', value = '@name@';")
            mysql.push("INSERT INTO translation SET property_definition_keyname = 'CL" + entity_definition.keyname + "-name', field = 'label', value = 'Name';")
            mysql.push("INSERT INTO translation SET property_definition_keyname = 'CL" + entity_definition.keyname + "-name', field = 'label_plural', value = 'Names';")
            mysql.push("INSERT INTO translation SET property_definition_keyname = 'CL" + entity_definition.keyname + "-description', field = 'label', value = 'Description';")
            mysql.push("INSERT INTO translation SET property_definition_keyname = 'CL" + entity_definition.keyname + "-description', field = 'label_plural', value = 'Descriptions';")
            entity_definition.validator.forEach(function(cl) {
                mysql.push("INSERT INTO entity SET entity_definition_keyname = 'CL" + entity_definition.keyname + "', sharing = 'public', created = now(), old_id = 'temporarykey';")
                mysql.push("INSERT INTO property SET property_definition_keyname = 'CL" + entity_definition.keyname + "-name', entity_id = (SELECT id FROM entity WHERE old_id = 'temporarykey'), value_display = '" + cl.item + "', value_string = '" + cl.item + "', created = now();")
                mysql.push("INSERT INTO property SET property_definition_keyname = 'CL" + entity_definition.keyname + "-description', entity_id = (SELECT id FROM entity WHERE old_id = 'temporarykey'), value_display = '" + cl.AppInfo + "', value_text = '" + cl.AppInfo + "', created = now();")
                mysql.push("UPDATE entity SET old_id = null WHERE old_id = 'temporarykey';")
            })
        }
    } else { // entity_definition.weight > 1
        var property_ordinal = 1
        mysql.push("INSERT INTO entity_definition SET keyname = '" + entity_definition.keyname + "', created = now();")
        mysql.push("INSERT INTO translation SET entity_definition_keyname = '" + entity_definition.keyname + "', field = 'label', value = '" + entity_definition.keyname + "';")
        mysql.push("INSERT INTO translation SET entity_definition_keyname = '" + entity_definition.keyname + "', field = 'label_plural', value = '" + entity_definition.keyname + "';")
        // mysql.push("INSERT INTO translation SET entity_definition_keyname = '" + entity_definition.keyname + "', field = 'displayname', value = '';")
        // mysql.push("INSERT INTO translation SET entity_definition_keyname = '" + entity_definition.keyname + "', field = 'displayinfo', value = '';")
        // mysql.push("INSERT INTO translation SET entity_definition_keyname = '" + entity_definition.keyname + "', field = 'sort', value = '';")
        Object.keys(entity_definition.properties).forEach(function(property_definition_keyname) {
            property_element = getByKeyname(property_definition_keyname)
            if (entity_definition.properties[property_definition_keyname] === 'enumeration') {
                mysql.push("INSERT INTO property_definition SET keyname = '" + entity_definition.keyname + "-" + property_definition_keyname + "'"
                    + ", entity_definition_keyname = '" + entity_definition.keyname + "'"
                    + ", dataproperty = '" + property_definition_keyname + "'"
                    + ", datatype = 'reference'"
                    + ", ordinal = " + property_ordinal++
                    + ", multiplicity = " + (property_element.listproperty ? 'null' : 1)
                    + ", public = 1"
                    + ", mandatory = " + (property_element.mandatory ? 1 : 0)
                    + ", search = 1"
                    + ", classifying_entity_definition_keyname = 'CL" + property_definition_keyname + "'"
                    + ", created = now();")
            } else if (typeof entity_definition.properties[property_definition_keyname] === 'object') {
                mysql.push("INSERT INTO property_definition SET keyname = '" + entity_definition.keyname + "-" + property_definition_keyname + "'"
                    + ", entity_definition_keyname = '" + entity_definition.keyname + "'"
                    + ", dataproperty = '" + property_definition_keyname + "'"
                    + ", datatype = 'reference'"
                    + ", ordinal = " + property_ordinal++
                    + ", multiplicity = " + (property_element.listproperty ? 'null' : 1)
                    + ", public = 1"
                    + ", mandatory = " + (property_element.mandatory ? 1 : 0)
                    + ", search = 1"
                    + ", classifying_entity_definition_keyname = '" + property_definition_keyname + "'"
                    + ", created = now();")
            } else if (entity_definition.properties[property_definition_keyname] !== 'string'
                && entity_definition.properties[property_definition_keyname] !== 'date'
                && entity_definition.properties[property_definition_keyname] !== 'boolean'
                && entity_definition.properties[property_definition_keyname] !== 'integer') {
                throw(stringifier([typeof entity_definition.properties[property_definition_keyname], entity_definition.properties[property_definition_keyname], entity_definition]))
            }

            mysql.push("INSERT INTO translation SET property_definition_keyname = '" + entity_definition.keyname + "-" + property_definition_keyname + "', field = 'label', value = '" + property_definition_keyname + "';")
            mysql.push("INSERT INTO translation SET property_definition_keyname = '" + entity_definition.keyname + "-" + property_definition_keyname + "', field = 'label_plural', value = '" + property_definition_keyname + "';")
        })
    }
    // entity_definition.usage.forEach(function(used_by_def) {
    //     // entity_definition.mysql.push("INSERT IGNORE INTO entity_definition SET keyname = '" + used_by_def + "' created = now();")
    // })
})
// entity_definitions.push(mysql)
fs.writeFileSync('parsed_resources.json', stringifier(entity_definitions))
fs.writeFileSync('clarin2entu.sql', mysql.join('\n'))
console.log('\n===== ' + Date.now()/1000 + ' == END ============\n\n')



// SET @edk = 'CLcolourSpace';
// DELETE FROM property WHERE entity_id IN (SELECT id FROM entity WHERE entity_definition_keyname = @edk);
// DELETE FROM property WHERE value_reference IN (SELECT id FROM entity WHERE entity_definition_keyname = @edk);
// DELETE FROM property WHERE property_definition_keyname IN (SELECT keyname FROM property_definition WHERE classifying_entity_definition_keyname = @edk);
// DELETE FROM relationship WHERE entity_id IN (SELECT id FROM entity WHERE entity_definition_keyname = @edk);
// DELETE FROM relationship WHERE related_entity_id IN (SELECT id FROM entity WHERE entity_definition_keyname = @edk);
// DELETE FROM entity WHERE entity_definition_keyname = @edk;
// DELETE FROM relationship WHERE entity_definition_keyname = @edk;
// DELETE FROM relationship WHERE related_entity_definition_keyname = @edk;
// DELETE FROM translation WHERE entity_definition_keyname = @edk;
// DELETE FROM translation WHERE property_definition_keyname IN (SELECT keyname FROM property_definition WHERE entity_definition_keyname = @edk);
// DELETE FROM translation WHERE property_definition_keyname IN (SELECT keyname FROM property_definition WHERE classifying_entity_definition_keyname = @edk);
// DELETE FROM property_definition WHERE entity_definition_keyname = @edk;
// DELETE FROM property_definition WHERE classifying_entity_definition_keyname = @edk;
// DELETE FROM entity_definition WHERE keyname = @edk;