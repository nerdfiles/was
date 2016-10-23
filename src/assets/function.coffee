###
@fileOverview ./src/assets/function.coffee
###

Function::getter = (prop, get) ->
  Object.defineProperty @prototype, prop, { get, configurable: yes}

Function::setter = (prop, get) ->
  Object.defineProperty @prototype, prop, { get, configurable: yes}

export default Function
