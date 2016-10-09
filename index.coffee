import { Promise } from 'bluebird'
import { Ontology } from './interface'

Promise.resolve(Ontology())
  .then('./src/assets/config')
  .then('./src/actions/assumeRole')
  .then('./src/actions/describeInstances')

