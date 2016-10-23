###
@fileOverview ./src/assets/request.coffee
Passing queries into key store.
###

import { KeyStore } from './store.key'
import './function'

###
@jsdoc class
@name Request
###

class Request

  ###
  @name Request:constructor
  @param {object} event Event fired.
  @param {object} parser Parser provided.
  ###

  constructor: (event, parser) ->
    @data = parser.analyzeEvent(event)

  stringify: () ->
    @data.stringify()

  @getter 'path', () ->
    @data.path

  @getter 'method', () ->
    @data.method

  @getter 'query', () ->
    new KeyStore @data.query

  @getter 'headers', () ->
    new KeyStore @data.headers

  @getter 'body', () ->
    new KeyStore @data.body

export default Request
