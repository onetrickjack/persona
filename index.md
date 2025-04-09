---
layout: default
title: Nick Pope
rdf_prefix_path: _data/prefixes.sparql
---

# Introduction

Hey, I'm [Nick Pope](www.linkedin.com/in/nickkpope) and I'm a One Trick Jack of All Trades. While spending the necessary 50 hours a week to complete my CS Degree at BYU I was spending the other 30 at a small VFX Studio doing Motion Graphics and Compositing. However, once the CG supervisor caught wind that I could code I focused my full attention on helping him develop his Vision of the pipeline from the tools down to the database to grease the pipeline from Client Turnover to DI.

A few years and three countries later I was back in Australia helping kickstart the Mill Film brand in Adelaide. I found myself sniping our microservices' dead rabbit queues in one moment and sorting out geometry winding-order conventions the next. We were laying down the pipeline a week ahead of departments. A dozen Artists per week flooded into the Studio to deliver four shows with hundreds of shots each in our first year.

I got through it thanks to some sage advice from a seasoned waitress while working at a Mexican Restaurant in my home town of Garden City, Utah. I was struggling to manage three or four tables and at wits end. Noticing this, she pulled me aside and said, "Look. You don't have four tables, you only have one. Stay cool and find a good path from the kitchen past each table and back again. Always keep your hands full." And no, her name was not Flo, despite that being a perfect coincidence while unwittingly receiving my first lesson in Async.

While I've found great success as a generalist, I also know the value and necessity of specialization. Any Organisation needs a healthy balance of both, and each individual must find their own middle way between them. So whats my One Trick? I strive to first, find the best path between tables, second, surround myself with great people, and third, equip ourselves with only the essentials.

If you need a generalist, or a specialist in Information Systems, connect with me on [LinkedIn](www.linkedin.com/in/nickkpope). I'd love to chat.

# Portfolio
If it isn't immediately apparent this is a bog-standard GitHub blog. One day I'll write and run a proper website, but that day is not this day. This will look pretty ugly for a while as I convert, redact, and update my work.

## Resume

#### Custom Generic

* [PDF (Dark)](https://raw.githubusercontent.com/onetrickjack/persona/refs/heads/main/resume_2025_dark.pdf)
* [PDF (Printable)](https://raw.githubusercontent.com/onetrickjack/persona/refs/heads/main/resume_2025_light.pdf)

#### Data-driven

{% assign query = '
SELECT *
{
    BIND (reso:Resume as ?type)
    ?sub a ?type ;
        rdfs:label ?label .
}' %}
{% assign resultset = query | sparql_query %}
<ul>
{% for result in resultset %}
    {% for page in site.pages %}
        {% if page.rdf.iri == result.sub.iri %}
        <li>
            <a href="{{ page.url | relative_url }}">{{ result.label }}</a>
        </li>
        {% endif %}
    {% endfor %}
{% endfor %}
</ul>

## Skills
* [LinkedIn Skills](https://www.linkedin.com/in/nickkpope/details/skills/)
* [Dunning-Kruger Map](./Skills.md#dunning-kruger-skills-map)
* [List-of-Lists*](./Skills.md#list-of-lists-of-skills)

## Featured Topics
* [ICT<->VFX Terms](./Topics/Recruiters_Guide_to_Hiring_VFX_Engineers.md)
* [Design](./Topics/Design.md)
* [System Architecture](./Topics/System_Design.md)

<br/>

---

