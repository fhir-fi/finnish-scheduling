### CodeSystems
{% capture codeSystemsCapture %}
{% include list-simple-codesystems.xhtml raw="<ul>" endraw="</ul>" %}
{% endcapture %}
{% if codeSystemsCapture contains "<li>" %}
{{ codeSystemsCapture }}
{% else %}
No CodeSystems are defined by this implementation guide.
{% endif %}

### ValueSets
{% capture valueSetsCapture %}
{% include list-simple-valuesets.xhtml raw="<ul>" endraw="</ul>" %}
{% endcapture %}
{% if valueSetsCapture contains "<li>" %}
{{ valueSetsCapture }}
{% else %}
No ValueSets are defined by this implementation guide.
{% endif %}

### ConceptMaps
{% capture conceptMapsCapture %}
{% include list-simple-conceptmaps.xhtml raw="<ul>" endraw="</ul>" %}
{% endcapture %}
{% if conceptMapsCapture contains "<li>" %}
{{ conceptMapsCapture }}
{% else %}
No ConceptMaps are defined by this implementation guide.
{% endif %}

### NamingSystems
{% capture namingSystemsCapture %}
{% include list-simple-namingsystems.xhtml raw="<ul>" endraw="</ul>" %}
{% endcapture %}
{% if namingSystemsCapture contains "<li>" %}
{{ namingSystemsCapture }}
{% else %}
No NamingSystems are defined by this implementation guide.
{% endif %}

### Other Terminologies

There are also many other notable terminologies used in Finland. Please see the
[terminology section of the Finnish FHIR Base Profiles](https://hl7.fi/fhir/finnish-base-profiles/terminology.html)
specification. 