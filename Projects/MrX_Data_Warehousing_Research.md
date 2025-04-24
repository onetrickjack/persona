---
title: Data Warehousing at Mr X
description: "Flowing data from Shotgrid through file systems and scene description."
---

## Abstract

A typical VFX company consumes a large and varied amount of resources; each with their own structure, security implications, value, time-span etc. Managing and connecting these resources proves to be our central challenges. Even the term becomes a flogged work standing at the ready any time a Pipeline crisis emerges. There is no silver bullet solution, but gaining access to these resources via industry proven big data tools can at least give us hope and a fighting chance.

Web Applications (or ) make their data a little bit more handy via REST APIs, but have a verticals
tendency to couple view logic to the access to resources which can make data access difficult. Going
straight to the DB has its drawbacks as well as access via REST APIs. These apps are necessarily
focused around a central goal or purpose and don't always think about other systems gaining access to their data.

Desktop applications are the worst of all. Whilst also focused around a specific domain desktop
applications are almost always tightly coupled to the file system with most pipeline tools trying to bridge the gap between these apps, between apps, and resources like Shotgun, or Tractor render jobs. This leads to tightly coupled REST APIs being tightly coupled to Desktop applications via Python's limited concurrency which can (does!) spell disaster.


### Fun Data Layouts

The diagrams shown below illustrate the power data warehousing for big picture understandings.

![Orange and purple dots representing Project and assignee relationships](/persona/assets/mrx_rdf_projects_and_assignees.png)

![Circles representing projects, shots and assets and their relationships](/persona/assets/mrx_rdf_projects_shots_and_assets.png)

![Green circles representing projects surrounded by users](/persona/assets/mrx_rdf_projects_and_users.png)

Now imagine each of those dots like the ones shown below. Allowing you to expand and connect various entities via their object properties.

![A graph of connnected entities using the LODLive browser](/persona/assets/mrx_rdf_lodlive_data_browser.png)

### Stack

Below we see a proposed stack for a typical VFX pipeline which illustrates how the data can be connected in a live environment.

![A diagram of the RDF hybrid stack for data warehousing](/persona/assets/mrx_rdf_architecture_diagram.png)

