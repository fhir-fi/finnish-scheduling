Extension: NotificationMediumExtension
Id: NotificationMediumExtension
Description: """Information on notification medium, based on THL - Viestintäkanava codesystem
94 Muistutuksen tapa"""
Context: "StructureDefinition"
* ^meta.lastUpdated = "2020-01-02T13:28:08.676+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/NotificationMediumExtension"
* ^status = #draft
* ^date = "2020-01-02T13:28:08.3939345+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/NotificationMediumExtension" (exactly)
* value[x] only Coding
* value[x] ^requirements = "94 Muistutuksen tapa"
* value[x].system = "urn:oid:1.2.246.537.6.883.201501" (exactly)
* value[x].system ^short = "THL - Viestintäkanava"
* value[x].version ..0