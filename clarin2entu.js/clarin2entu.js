var fs       = require('fs')
var util     = require('util')
var assert   = require('assert')
var events   = require('events')


var schema_dir = '../Resource Types/'

var resource_types = []
var entity_definitions = []
var classifiers = {}

console.log('\n\n\n===== ' + Date.now() + ' ==============')

var foo = {'foo':'baz'}

console.log(foo.length)

fs.readdirSync(schema_dir).forEach(function(filename) {
    var nameparts = filename.split('.')
    if (nameparts[nameparts.length-1] === 'json') {
        var resource_name = filename.substring(0,filename.length-5)
        console.log(' Read ' + resource_name + ' from ' + filename)
        data = fs.readFileSync(schema_dir + filename)
        resource_types.push({'resource_name':resource_name, 'CMD_root':JSON.parse(data).CMD_ComponentSpec.CMD_Component})
    }
})

// Resource types are loaded
// console.log(util.inspect(resource_types, {depth:3}))
function indexByKeyVal(source, key, val) {
    for (var i = 0; i < source.length; i++)
        if (source[i][key] === val)
            return i
    return -1
}

var parseElementRec = function parseElementRec(parent_element_name, CMD_Element) {
    var element = {}
    element.keyname = CMD_Element['@name']
    element.weight = 1
    element.datatype = ''
    element.validator = []
    element.usage = []

    // if (entity_definitions[element.keyname] !== undefined)
    //     return entity_definitions[element.keyname]
    var idx = indexByKeyVal(entity_definitions, 'keyname', element.keyname)
    if (idx > -1) {
        if (entity_definitions[idx].usage.indexOf(parent_element_name) === -1)
            entity_definitions[idx].usage.push(parent_element_name)
        return entity_definitions[idx]
    }

    if (element.usage.indexOf(parent_element_name) === -1)
        element.usage.push(parent_element_name)

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
        if (CMD_Element.ValueScheme.enumeration.item.length === undefined)
            CMD_Element.ValueScheme.enumeration.item = [CMD_Element.ValueScheme.enumeration.item]
        CMD_Element.ValueScheme.enumeration.item.forEach(function(item){
            element.validator.push(item['#text'])
        })
        element.validator.sort()
    }
    entity_definitions.push(element)
    return element
}

var parseComponentRec = function parseComponentRec(parent_element_name, CMD_Component) {
    if (CMD_Component === undefined)
        throw(util.inspect(CMD_Component))

    var element = {}
    element.keyname = CMD_Component['@name']
    element.weight = 1
    element.datatype = ''
    element.validator = ''
    element.usage = []
    element.properties = []

    // if (entity_definitions[element.keyname] !== undefined)
    //     return entity_definitions[element.keyname]
    var idx = indexByKeyVal(entity_definitions, 'keyname', element.keyname)
    if (idx > -1) {
        if (entity_definitions[idx].usage.indexOf(parent_element_name) === -1)
            entity_definitions[idx].usage.push(parent_element_name)
        return entity_definitions[idx]
    }

    element.datatype = 'entity'

    if (element.usage.indexOf(parent_element_name) === -1)
        element.usage.push(parent_element_name)

    entity_definitions.push(element)

    if (CMD_Component.CMD_Element !== undefined) {
        if (CMD_Component.CMD_Element.length === undefined)
            CMD_Component.CMD_Element = [CMD_Component.CMD_Element]
        CMD_Component.CMD_Element.forEach(function(el) {
            var subelement = parseElementRec(element.keyname, el)
            element.weight += subelement.weight
            element.properties.push(subelement)
        })
    }

    if (CMD_Component.CMD_Component !== undefined) {
        if (CMD_Component.CMD_Component.length === undefined)
            CMD_Component.CMD_Component = [CMD_Component.CMD_Component]
        CMD_Component.CMD_Component.forEach(function(el) {
            // console.log(el['@name'])
            var subelement = parseComponentRec(element.keyname, el)
            element.weight += subelement.weight
            element.properties.push(subelement)
        })
    }
    return element
}

var setPropertyType = function setPropertyType(value_scheme) {
    if (element)
    return definition
}

var stringifier = function(o) {
    var cache = [];
    return JSON.stringify(o, function(key, value) {
        if (typeof value === 'object' && value !== null) {
            if (cache.indexOf(value) !== -1) {
                // Circular reference found, replace key
                return 'Circular reference to ' + value.keyname + ' [w:' + value.weight  + ']'
            }
            // Store value in our collection
            cache.push(value)
        }
        return value
    }, '\t')
}

resource_types.forEach(function(resource_type) {
    var CMD_root = resource_type.CMD_root
    console.log(util.inspect(CMD_root))
    console.log('\n\n\n===== ' + Date.now() + ' ==============')
    parseComponentRec(resource_type.resource_name, CMD_root)
    // console.log(util.inspect(parseComponentRec(CMD_root, {depth:null})))
})
entity_definitions.sort(function(a,b) {
    return a.weight - b.weight
})
fs.writeFileSync('parsed_resources.json', stringifier(entity_definitions))


