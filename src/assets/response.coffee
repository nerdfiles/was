class Response
  constructor: (body, code) ->
    @body = body

    switch typeof code
      case 'undefined':
        @code = 200
        break
      case 'number':
        @code = code
        break
      default:
        throw new TypeError 'Res code must be an int'

  simplify: () ->
    statusCode:  @code
    body:        JSON.stringify @body

export default Response
