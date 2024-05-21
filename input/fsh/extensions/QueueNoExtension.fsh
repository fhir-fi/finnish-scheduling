Extension: QueueNoExtension
Id: QueueNoExtension
Description: """An extension for queue number (in string format).
82 Jonotusnumero"""
Context: "StructureDefinition"
* ^meta.lastUpdated = "2020-01-02T13:35:42.730+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/QueueNoExt"
* ^status = #draft
* ^date = "2020-01-02T13:35:42.4368164+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/QueueNoExt" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^requirements = "82 Jonotusnumero"