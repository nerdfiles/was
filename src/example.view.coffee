Response = require('was/response')
Toffee = require('toffee')

export default =
  exampleName: (req, env) ->
    exampleText = '''

      this is an example in #{env.stage}

    '''
    tmpl = Toffee.compileStr exampleText
    return new Response(tmpl, 200)

