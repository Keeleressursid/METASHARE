var assert   = require('assert')
var fs       = require('fs')
var util     = require('util')
var EntuLib  = require('./entulib/javascript/entulib.js')


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

var cmdi_filename = myArgs[2]
var entu_user_id = myArgs[0]
var entu_user_key = myArgs[1]
var entu_url = 'devm.entu.ee'
var EntuLib = new EntuLib(entu_user_id, entu_user_key, entu_url)

var cmdi_data = JSON.parse(fs.readFileSync(cmdi_filename))

EntuLib.getEntity(console.log, 684)