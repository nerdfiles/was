###
@fileOverview ./src/actions/assumeRole.coffee
###

# Core.
import { util } from 'util'
# NPM.
import { AWS } from 'aws-sdk'
# Infrastructure.
import { Action } from 'mover'
# Actions.
import { DescribeInstances } from './describeInstances'

###
Obtain the running instance count for a particular type from another account.

@param {String} accountId The account to access, e.g. '555666777888'.
@param {String} instanceType The instance type, e.g. 't2.medium'.
@param {Function} callback Of the form function (error, count).
###

class ObtainInstanceCount extends Action

  constructor: (accountId, instanceType, callback) ->

    # This client uses the default configuration read from the environment or 
    # instance metadata.
    @stsClient = new AWS.STS()

    @defaultRoleConfig =
      RoleArn: util.format(
        'arn:aws:iam::%s:role/CrossAccountInstanceCounter',
        accountId
      ),
      RoleSessionName: 'instance-counter',
      DurationSeconds: 3600

  assume: (roleConfig={}) ->

    let loadedRoleConfig = roleConfig || @defaultRoleConfig

    @stsClient.assumeRole(
        loadedRoleConfig
      , (error, response) ->
        if error
          return callback(error)
        ec2Client = new AWS.EC2
          accessKeyId: response.Credentials.AccessKeyId,
          secretAccessKey: response.Credentials.SecretAccessKey,
          sessionToken: response.Credentials.SessionToken

        DescribeInstances(ec2Client, instanceType, callback)
    )

export default obtainInstanceCount
