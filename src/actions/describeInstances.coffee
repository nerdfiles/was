###
@fileOverview ./src/actions/describeInstances.coffee
###

# Core.
import { util } from 'util'
# NPM.
import { AWS } from 'aws-sdk'
import { _ } from 'lodash'
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
          Name   : 'instance-type',
          Values : [
            instanceType
          ]
        },
        {
          Name   : 'instance-state-name',
          Values : [
            'running'
          ]
        }
      ]

    if nextToken
      params.NextToken = nextToken

    ec2Client.describeInstances(params, (error, response) ->
      callback error  if error?

      _.each(response.Reservations, (reservation) ->
        @instanceCount += reservation.Instances.length
      )

      if response.NextToken
        @recurse response.NextToken
      else
        callback null, @instanceCount
    )

export default DescribeInstances
