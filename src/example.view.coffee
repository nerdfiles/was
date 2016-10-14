Response = require('was/response')
Toffee = require('toffee')

export default =
  exampleName: (req, env) ->
    exampleText = '''

      environment: #{env.stage}

    '''
    tmpl = Toffee.compileStr exampleText
    return new Response(tmpl, 200)

