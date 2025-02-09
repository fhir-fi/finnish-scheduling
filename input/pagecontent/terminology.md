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
The Finnish core concepts for scheduling are defined in
[Sosiaali- ja terveydenhuollon ajanvarauspalvelujen ja palveluohjauksen käsitteet](https://urn.fi/URN:NBN:fi-fe2024060343030)

The content format for the appointment booking document (*ajanvarausasiakirja*) is defined in
[Ajanvarausasiakirjan tietosisältömäärittely](https://termeta.thl.fi/termeta/document-definitions/list/search).

Relevant code sets in the national code server (besides the [Ajanvarauksen tila](#conceptmaps) described above) include
* [THL - Yhteystapa](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=4446&versionKey=5151)
* [THL - Viestintäkanava](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=2004&versionKey=2264)
* [Ajanvaraus - Yhteyshenkilön tyyppi](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1944&versionKey=2204)

There are many other terminologies used in Finland. Please see the list of some promonent ones in
the [terminology section](https://hl7.fi/fhir/finnish-base-profiles/terminology.html) of the
Finnish FHIR Base Profiles specification.
