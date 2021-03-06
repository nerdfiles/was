###
@fileOverview ./src/assets/config.coffee
###

# Core.
import { util } from 'util'
# NPM.
import { AWS } from 'aws-sdk'
# Infrastructure.
import { Config } from 'mover'

###
Configuration.
###

class Configuration extends Config

  constructor: () ->

    # This config uses the default config read from the environment or 
    # instance metadata read from DATA records inferred from account
    # aliases.
    @config = AWS.config = new AWS.Config()

  initialize: () ->
    console.log(@config)

export default Configuration
