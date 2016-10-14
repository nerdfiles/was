###
@fileOverview ./src/assets/store.key.coffee
@description
###

# Core.
_ = require('lodash')

###
  Attributes:
    has
    get
    all
###

class KeyStore
  constructor: (store) ->
    @store = store

  has: (key) ->
    @store.hasOwnProperty(key)

  get: (key, defaultVal) ->
    if !defaultVal
      defaultVal = null
    if @store.hasOwnProperty(key)
      @store[key]
    else return defaultVal

  all: () ->
    _.assign {}, @store

export default KeyStore

