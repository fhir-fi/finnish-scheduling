Extension: ResourceCalendarIdExtension
Id: ResourceCalendarIdExtension
Description: """Extension for resource calendar id and resource name. 
74 Resurssin kalenteritunniste. 75 Resurssin nimi"""
Context: "Appointment"
* ^url = "http://hl7.fi/fhir/StructureDefinition/ResourceCalendarIdExtension"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ResourceCalendarId 0..* and
    ResourceCalendarName 0..1
* extension[ResourceCalendarId] ^requirements = "74 Resurssin kalenteritunniste"
* extension[ResourceCalendarId].value[x] only Identifier
* extension[ResourceCalendarId].value[x].use ..0
* extension[ResourceCalendarId].value[x].type ..0
* extension[ResourceCalendarId].value[x].period ..0
* extension[ResourceCalendarName] ^requirements = "75 Resurssin nimi"
* extension[ResourceCalendarName].value[x] only string
* url = "http://hl7.fi/fhir/StructureDefinition/ResourceCalendarIdExtension" (exactly)