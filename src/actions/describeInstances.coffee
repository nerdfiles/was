###
@fileOverview ./src/actions/describeInstances.coffee
###

# Core.
import { util } from 'util'
# NPM.
import { AWS } from 'aws-sdk'
# Infrastructure.
import { Action } from 'mover'

###
Run one or more describeInstances requests to get a count of instances.

@param {AWS.EC2} ec2Client A client with suitable credentials.
@param {String} instanceType The instance type, e.g. 't2.medium'.
@param {Function} callback Of the form function (error, count).
###

class DescribeInstances extends Action

  constructor: (ec2Client, instanceType, callback) ->
    @instanceCount = 0

  recurse: (nextToken) ->
    params =
      Filters: [
        {
          Name: 'instance-type',
          Values: [
            instanceType
          ]
        }
      ]

export default DescribeInstances
