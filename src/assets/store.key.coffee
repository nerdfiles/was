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
    Object.assign {}, @store

export default KeyStore

