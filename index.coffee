# file: index.coffee

# required plugins
config = require 'hotcoffee-config'
mongodb = require "hotcoffee-mongodb"

hotcoffee = require('hotcoffee')()
#formats = require "#{__dirname}/src/formats"

mongodb_url = process.env['MONGOLAB_URI'] or 'mongodb://127.0.0.1:27017/hotcoffee'

hotcoffee
  .use(config) # parse config from command line args
  .use(mongodb, url: mongodb_url) # use MongoDB as persister
  .start()
