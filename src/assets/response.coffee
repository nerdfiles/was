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
        throw new TypeError 'Response code must be an integer.'

  render: () ->
    statusCode:  @code
    body:        JSON.stringify @body

export default Response
