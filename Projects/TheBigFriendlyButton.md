---
title: The Big Friendly Button
description: "A Big Friendly Button powered by templated automation"
---


| <strong style="color:orange">Warning</strong> |
|--|
| What follows is a direct-ish copy paste from internal documentation. Hopefully it makes some sort of sense of what it is until I have time to properly summarize the project. |

<h1 >Design Philosophies</h1>
<ul>
<li>Configure EVERYTHING. Config can be treated as code, but code should never be treated as config.</li>
<li>There should be no hard coded parameters or assumptions made within a node. I catch myself doing this a lot. Push it all down to the config.</li>
<li>BFB nodes must be completely dumb. They represent and shape configuration into meaningful, well defined, focused, cohesive units. They are the the building blocks of the system and ergo must conform to the system.</li>
<li>The BFB nodes are meant to be the source of truth to enforce workflow consistency with the understanding that these workflows change over time even within the development of a single shot.</li>
<li>Don't repeat yourself - Configuration becomes quickly unmanageable when it is duplicated unnecessarily. Jinja templating gives you a lot of great mechanisms to deal with this.</li>
<li>Define a context hierarchy and stick to it - Nodes can get you pretty far, but at some point you need to assembly more complex workflows. This must also remain focused in the same way nodes do. Anything that spans more than 10 nodes should probably be broken out into a new context hierarchy. I expect these hierarchies to be configured for specific departmental needs.</li>
<li>The full shot graph is a lie! I have learned over the course of many attempts of trial and error that building an end to end shot workflow within one graph is an over-reach. You will see how individual pillars can be configured to share data without needing to be composed within a single workflow.</li>
</ul>
<h1 >Much Integration, So Injection</h1>
<p>As I'm sure most of you have heard my ranting about Tessa's testing framework, but come on.. its amazing.</p>
<p>Over the past year or so during TNC and FAT we developed a yaml based Tessa asset injection utility that allows you to inject assets and their respective metadata. The demo shown below uses the following yaml injection file.</p>


<strong>demo.yaml</strong>


```yaml
# Build Templates
assetVersions:
  "assetversion:DEV.build:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.build.yaml"]
  "assetversion:DEV.build.components:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["build.yaml"]
  "assetversion:DEV.flag.build.components:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.flag.build.components.yaml"]
  "assetversion:DEV.flag.build.environments:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.flag.build.environments.yaml"]

# Shot Templates
  "assetversion:DEV.shots:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.shots.yaml"]
  "assetversion:DEV.shots.3ddmp:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.shots.3ddmp.yaml"]
  "assetversion:DEV.flag.BS.BS0010:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.flag.BS.BS0010.3ddmp.yaml"]
  "assetversion:DEV.flag.BS.BS0020:yaml.bfbTemplate:1":
    releaseData:
      assetPath: "/mpc/devel/nick-p/dev/bfb/resources/graphTemplates"
      files: ["DEV.flag.BS.BS0020.3ddmp.yaml"]

# Environment assets
  "assetversion:DEV.flag.build.environments:usdAsset.Kitchen:1":
    releaseData:
      assetPath: "/jobs/flag/rnd/rnd_software/maya/cache/usd/Kitchen_set"
      files: ["Kitchen_layer.usda"]
  "assetversion:DEV.flag.build.environments:usdAsset.UlsteadCastle:1":
    releaseData:
      assetPath: "/jobs/flag/rnd/rnd_software/maya/cache/usd/nayoung-k"
      files: [
        "castleBaseLevelA.usd",
        "castleEastWingA.usd",
        "castleFirstLevelA.usd",
        "castleHangingTowerA.usd",
        "castleInnerCourtyardA.usd",
        "castleMainTowersA.usd",
        "castleSouthHallA.usd",
        "castleSurroundings.usd",
        "castleWestHallA.usd",
      ]

# Activate all contexts
  "assetversion:DEV.flag:yaml._:1": {}
  "assetversion:DEV.flag.build:yaml._:1": {}
  "assetversion:DEV.flag.BS:yaml._:1": {}

# Once the Jinja templating asset is created it will have a assetVersion field for parent templates.
relationships: []
#- parent: &lt;asset_version_uri&gt;
#  child: &lt;asset_version_uri&gt;
#  location: []
```



<p>You can start the bfb and reference the above file and it will start up in integration mode using only the assets injected in the config (plus a few other random bits thrown in for generic testing).</p>


```
$ env TESSA_MODE=unit_testing ion run bfb -- -i /mpc/devel/nick-p/bfbMockData/demo.yaml cat context:DEV.flag.build.environments
```


<p>This will load the yaml template injected above which points to template files in my local project. If you start the bfb without the integration file it will start up in production mode and look for assets released in production.</p>
<p>I expect all of the development to happen in integration mode since the workflow is purely Tessa based with <strong>absolutely no connection to production data</strong>.</p>
<p>There are a few other testing utilities that allow you to download production assets metadata into yaml files that can then be used to reproduce scenarios encountered in production. If the essence data itself (usd files, etc) is required it can be copied into a temporary location and the releaseData for the asset can be updated to point to those files.</p>

<span ></span>

<p>I did notice that starting subprocesses (like when launching maya) raised some exceptions about re-injecting assets. Although removing the injection in the Maya bootstrap didn't inject those assets. I just cheekily caught those exceptions in the injection utility for now. Will need to test this more carefully later.</p>








<h1 >Components</h1>






<h2 >Config Templating</h2>

The use of plain text templating tools like Jinja can be employed for much more that the typical html web site. They can also be used to template configuration and that is what the BFB uses it for. Hey. If it works for ansible, why not pipeline automation?

<h3 >The Tessa Asset Resource Loader</h3>
<p>I have implemented a very basic asset loader to use asset version uris to resolve templates. This allows you to have one config asset extend another by simply extending the asset version uri.</p>


```python
class AssetVersionLoader(jinja2.BaseLoader):
    """ Loads templates based on tessa asset version uris.
    """

    def __init__(self, services):
        self._services = services

    def get_source(self, environment, template):
        """    Re-implement function for custom resource loading
            via Tessa assets.
        """
        assetVersionUri = template
        try:
            av = uri.toAssetVersion(assetVersionUri, services=self._services)
        except tessaExceptions.AssetNotFound as err:
            _log.exception(err)
            raise jinja2.TemplateNotFound(str(err))

        if av.assetType != "yaml":
            raise jinja2.TemplateNotFound(
                "The asset type %s is not supported for jinja templating.",
av.assetType
            )

        # We can assume that only one file is present for now
        # the jinja template asset will enforce this
        path = str(av.fullPaths[0])
        return _buildTemplateOutput(path)

```


<p>I'm cheating here by using the yaml asset type directly. Future development would be needed to make a Jinja template asset to generically template any text-based file formats (like .yaml, .xml, .json, etc) which are not directly useful as config in their native format.</p>
<p>Making jinja-based config templating powerful comes with the tradeoff that template rendering is non-deterministic. This will be due to the template getting mutable configuration injected into it, such as Pronto tasks, show blueprints, weather forcasts, etc. I don't like this, but the immediate benefits are quite great and at some point we must accept this as a reality. However it can be overcome.</p>
<p>Rendering a template at a given time will release the fully formed, baked format specific config asset which is totally immutable. It is this config that will drive a particular session, and be the basis for execution. I am currently cheating a bit here in the current code where I reference the template in some parts of the code where it should be referencing the rendered and necessarily immutable.</p>
<p>This may seem restrictive but it is very important to keep execution bounded and deterministic as well. This does mean that you are "locked in" to a baked instance of that workflow for that session, the next execution session however will be based on a new instance in which the workflow could be completely different.</p>
<p>One may also ask, "well now we've gotta sync template files all over the world right? We hate syncing tiny files." No. Since each asset's metdata records the site it was release from you can simply read the file from the site it was released in via the configService which can make a cross mesh call to the asset's site. Since tessa assets are immutible (and the config service supports the notion of versions) the cross-mesh calls can be cached effectively doing the syncing via services out of the box.</p>




<h4 >Example</h4>


<strong>context:DEV.build</strong>


{% raw %}
<pre >{%- block nodes %}
nodes:
{%- endblock %}
{%- block edges %}
edges: []
{%- endblock %}</pre>
<strong>context:DEV.flag.build.environments</strong>
<pre >{%- extends "assetversion:DEV.build:yaml.bfbTemplate:1" %}
{# The build requested will likely be injected into the config, perhaps pulled from Pronto tasks #}
{%- set builds = ("UlsteadCastle", "FairyTerrain", "Kitchen") %}
{%- block nodes %}{{ super() }}
{%- for object in builds %}
  "build{{ object }}":
    nodeType: "buildUsdComponent"
    nodeParams:
      inputsKwargs:
        asset:
          {"uri": "asset:DEV.flag.build.environments:usdAsset.{{ object }}"}
      outputsKwargs:
        asset:
          {"uri": "asset:DEV.flag.build.environments:usdAsset.{{ object }}"}
{%- endfor %}
  scatterUlsteadEnv:
    nodeType: "noOp"
    nodeParams: {}
  buildUlsteadEnv:
    nodeType: "noOp"
    nodeParams:
      automatic: True
  scatterFairyEnv:
    nodeType: "noOp"
    nodeParams: {}
  buildFairyEnv:
    nodeType: "noOp"
    nodeParams:
      automatic: True
{%- endblock %}
{%- block edges %}
edges:
{%- for object in builds %}
{%- endfor %}
- [buildUlsteadCastle, scatterUlsteadEnv, {}]
- [scatterUlsteadEnv, buildUlsteadEnv, {}]
- [buildFairyTerrain, scatterFairyEnv, {}]
- [scatterFairyEnv, buildFairyEnv, {}]
{%- endblock %}
{% endraw %}
</pre>
<h2 >Execution</h2>
<p>Below is the Class Diagram for the execution portion of the BFB.</p>
<p></p>
<strong style="color:orange">This image cannot be accessed</strong>
<h1 >Nodes</h1>
<p>The function of the node is to distill the configuration provided by the template into atomic actions. These actions can depend on the execution of other actions into smaller tight-nit workflows for a single task in a single DCC.</p>
<p>For now I expect everything must be configured by the node up front. This is important for many reasons, but primarily to provide a stable reproducible and immutible instance of a workflow so that when things inevitably goes wrong we have some common ground.</p>
<h1 >Actors</h1>
<p>The function of the actor is to provide an API and basic functionality for a given domain, where a domain is a specific DCC like Maya, Nuke, Katana, or Houdini.</p>
<p>This is very important as it keeps the nodes simple and focused on their purpose described above. These actors will be instantiated within their native environment without any need for complex serialization since the actions from the nodes are atomic, sending a message to an actor to perform a certain action would simply be sending it the workflow configuration to use and the action Id to run. It is expected that any return values of actors is serializable so that it can be fed back to the caller potentially over a subprocess or socket.</p>
<p>I expect that these actors would eventually become Amanda services to run either DCCs headless or in interactive GUIs responding to actions performed by the artist.</p>
