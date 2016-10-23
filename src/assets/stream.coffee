###
@fileOverview ./src/assets/stream.coffee
###

import { KeyStore } from './store.key'
import './function'

###
@class
@name Stream
###

class Stream

  ###
  @param {string} path URL path.
  @param {string} method HTTP Methods: GET, POST, PUT, PATCH, OPTIONS, DELETE
  @param {object} headers Request headers.
  @param {string} body Request body.
  @param {string} query Query.
  ###

  constructor: (path, method, headers, body, query) ->
    @private = {}
    @private.path = path
    @private.method = method
    @private.headers = headers
    @private.body = body
    @private.query = query

  @getter 'path', () ->
    @private.path

  @getter 'method', () ->
    @private.method

  @getter 'query', () ->
    @private.query

  @getter 'headers', () ->
    @private.headers

  @getter 'body', () ->
    @private.query

  stringify: () ->
    JSON.stringify @private

export default Stream

