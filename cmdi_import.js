var assert   = require('assert')
var fs       = require('fs')
var util     = require('util')
var entulib  = require('../../entulib/javascript/entulib.js')


var myArgs = process.argv.slice(2);
assert.strictEqual(typeof(myArgs[0]), 'string'
            , "CMDI file name should be passed as first argument from commandline.")
assert.strictEqual(myArgs[1], undefined
            , "If you have spaces in file name, please \"enquote\" it.")
assert.ok(fs.existsSync(myArgs[0])
            , "There is no file at \"" + myArgs[0] + "\"")

var cmdi_filename = myArgs[0]

