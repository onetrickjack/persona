---
title: Predicated Value Inheritance
description: "Getting value from universally defined predicates (aka URIs)."
---

# Abstract

In this topic we explore the use cases and integration architecture for the notion of Predicated Value Inheritance. This document hopes to explain how queries, value inheritance, caching and mutation can work within a basic application. Creation and deletion operations are omitted in some diagrams to better achieve visual clarity. We explore the use case of Conform validation as it characterizes a few interesting use cases. This gives a real-world sense of the application of these concepts and to be as truthful to the business logic they try to represent (corrections encouraged!). There may also be some logical errors at this time of writing.

We find that the integration with Shotgun requires the inclusion of an entity responsible for holding plain
text encoded data. This entity can be linked to other entities within Shotgun to extend their data with
more arbitrary predicated values (or columns). Using a custom entity allows expectations for queries for
consuming APIs since the Shotgun content text field data can become quite large (up to 1 GB) thanks to
via PostgreSQL's . If the 1GB limit is reached the content will be written elsewhere, but the data TOAST
should try to be as small as possible.

Text resources are shown as rectangles with a turned corner on the top right. The metadata text format
used in this document is RDF n-quad. The RDF triple (quad is triple plus the context) takes the form of a
single line of text declaring the triple + context. Both the subject `<sub>` `<pred>` `<obj>` `<context>`
and context are occasionally muted or omitted to save visual space. Whilst the predicate and object
(which also represents a value) taking the starring roles, the subject and context provide necessary
information to aid applications ability to distinguish between different 'flavors' of triples. This format is, of
course, not strictly required.

Schema and ontology text objects are represented as GraphQL schema and plain text formats
respectively. These were chosen primarily for visual neatness and does not directly imply their use other
schema formats like jsonschema and protobuf may be preferred in certain circumstances. We
recommend that these formats are chosen depending on their fitness within a business' current
computing environments.


# Conform Validation

The diagram below shows the general flow of the data collection
process within the context of verifying deployed Shot frame range
values against the latest cut items and highlights any shots which are
out in red by the use of the `check_frame_range` service.

Light blue values are inherited by scanning up the list of predicates
starting with the related entity (row) and then stopping at the first
predicate which maps to a literal value (like 1009, or "01:00:42:12").

If the subject of the triple is a url (assumed as a get request by default) it
provides the means of access for that value via a service call. Following
a successful request the value is then cached by simply appending the
triple to the end of the dataset. This caching procedure can be optimized
by placing the url as the subject and then re-use the predicate defining
the request (currently not shown in the diagram).

Mutations within the current process can also be handled by appending
them to the respective dataset with the subject (and potentially other
triples) encoding the service call to be used to modify the value. This
could be performed 'live' to avoid conflict. Background refresh routines
could also be used to notify the user that the data has changed or,
again, update it in real time within the interface depending on user
preference.

![A diagram of the Conform process with predicated values.](/persona/assets/PVI_Conform_Use_Case_Diagram.png)


# Architecture

Unfortunately I don't have the complete architecture diagram, but it shows how values can be stored in a variety of places and then be queried and assembled during the execution runtime. Since the composition of those data sources is determined at query time it allows you to have certain configuration stores take precedent over others. This can lead to confusion or wonky value inheritance, but potentially unlock a level of value sparsity that can make the management of the configuration much more amenable.
