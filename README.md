# Web Application Semantics

Web Application Semantics provide implementation details for specifying
transmedia interactions between Machines Identities and Software Identities
in the context of REST-ful environments. Issues pertaining to the rules
of interpretation of Atomic, Continuous, and Contiguous time-based molecular
actions between dynamically self-organizing assets will be addressed via
resource description framework pertaining to the Periodic Table of
Information.

## Atomic Activities

Atomic activities depend on the elements of time which conform to discrete
descriptions as in the following interpretations of the present examples:

    The cat was on the mat yesterday.

Notice that the discrete moment in time identified is a particular day,
inferred from the localization of a discrete set of days based on a lunar
year. The day's date can be comparatively measured after being inferred
such that Date comparisons are meaningful, and eventually purposefully
orchestrated within a distributed ledger environment. Elements of the
given proposition may be indexed with respect to the result of the
comparison operation that follows from a series or unitary operation
that is mapped to an action.

More generally we can say of such atomic activities that they are
components to a unique set that groups past, present, and future
entities such that `cat` of a statement recorded at time, t, might be
measured to be older or younger than `puma` measured asynchronously,
depending on the inner properties of those implied ontology schema
instances derivable from @dob, or @founded (in the case of companies),
etc.

## Continuous Activities

Continuous activities depend on the elements of time which conform to
non-discrete descriptions as in the following interpretations of the
present example:

    The festival is earlier than the afterparty.

Notice that the non-discrete moment, or directed moment, in time
identified is a locality. From some other objective element of the
given event, one could not derive a discrete activity outside of
those presumably extant to the given statement. As in our previous
example, `yesterday` might fall within the given statement's
implied time range, but it is not certain without more contextual
information. Inherent to the problem might be what is called a
textual mode, textual medium, and textual average overdetermination.

    ['the', 'festival', 'is', 'earlier', 'than', 'the', 'afterparty']

The determined median is 'earlier', expectedly, while the mode might be
identified as a prompt for 'rigid designation', or minimally a definite
description of some sort. Considering the problem of scope limitation,
the ostensive quality of the statement is noted. In a certain way, the
expected quality implies a certain reflexive predication through its
definite descriptions. The mean might be rendered unintelligible from
the perspective of how one might operationally treat a discrete statement.
`yesterday` implies a Date, and therefore the time of record might be
imperative to interpret beyond as a mere authentication element as a
timestamp used in the cryptographic exchange. So, ascending the cascade,
one might wish to determine the context or semantic atmosphere of the role
so implied by the statement. In what since is the cat participant to an
action (`was on`) immediately timestamped? How can we non-trivialize the
events discrete temporal attributes to explicitly compare implied qualities
of implied entities?

A certain number result follows from `yesterday` more immediately, as our
observation of timestamps serves, than any term in our given statement.
`earlier` implies a discrete set of temporal events but does not guarantee
them; so as assets, and elements of the given proposition must be treated
as directed or continuous with respect to some other action. These elements
might be called "overdetermined" such that the evidence of their reality
is contingent upon competing assertions within the larger semantic atmosphere.
`earlier` as a property of the statement says nothing when compared to the
timestamp of the nearest record, and so we might also say that such statements
are inherently autotemporal: temporally they describe themselves and no other
statement within the semantic atmosphere. Their entities do, but when sorting
such statements, their temporal properties do nothing to serve whether they
should appear first or last. Sorting by `earlier` or `later` would give us
a very noisy state of affairs.

## Contiguous Activities


Contiguous activities depend on the elements of time which conform to
ordered descriptions as in the following interpretations of the
present example:

    A shoe is on the right foot. The cat is on the mat. The moon is full.

Notice that the ordered moment, or permanent, in time is non-local. The span
of its elements may be extant to any extent at which time actually instantiated
is scoped as a statement within a transaction stream for an arbitrary set
of agents as Machine Identities or Software Identities. These statements
must be treated more readily in parallel contexts of operational behavior
such that concurrency supported by failure detection, timing assumptions,
probabilistic outcome scores from complexity analysis, and universality
as an indication of strong primitives, of which the Periodic Table of
Information addresses in its Discovery Layer.

## Structural Activities

```coffeescript
# lambda endpoint
# ./operation.coffee

was = require('was');
View = require('./view');

Operation =
  exampleName: was.environment View.exampleName

export default Operation

# ./view.coffee

Response = require('was/response')
Toffee = require('toffee')

View =
  exampleName: (req, env) =>
    exampleText = '''

      environment: #{env.stage}

    '''
    tmpl = Toffee.compileStr exampleText
    return new Response(exampleText, 200)

export default View
```
