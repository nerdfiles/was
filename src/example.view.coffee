Response = require('was/response')

export default =
  exampleName: (req, env) =>
    exampleText = `this is an example in ${env.stage}`
    return new Response(exampleText, 200)

