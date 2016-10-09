import { Promise } from 'bluebird'
import { Ontology } from './interface'

Promise.resolve(Ontology())
  .then('./src/assets/config')
  .then('./src/assumeRole.coffee')
  .then('./src/describeInstances.coffee')

