{% assign children = site.pages | where_exp: "p", "p.url contains page.dir" | sort: "title" %}
{% for child in children %}{% if child.url != page.dir %}
* [{{ child.title }}]({{ child.url | remove: ".html" | relative_url }}){% endif %}{% endfor %}
