Extension: SelfServiceExtension
Id: SelfServiceExtension
Description: """Extension for Finnish Scheduling appointment, that notifies whether there is a self service for managing appointment (provides URL and information whether management can be made by proxy).
84 AsiointiURL
84.1 Järjestelmä tukee alaikäisen puolesta asiointia
84.2 Järjestelmä tukee puolesta-asiointia valtakirjalla täysi-ikäisen puolesta
84.3 Järjestelmä tukee rekisteripohjaista puolesta-asiointia täysi-ikäisen puolesta"""
Context: "Appointment"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2020-01-02T13:15:48.783+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/SelfServiceExtension"
* ^status = #draft
* ^date = "2020-01-02T13:15:48.4848746Z"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    URL 1..1 and
    SupportsMinor 0..1 and
    SupportsProxy 0..1 and
    SupportsRegister 0..1
* extension[URL] ^requirements = "84 AsiointiURL"
* extension[URL].value[x] only url
* extension[SupportsMinor] ^requirements = "84.1 Järjestelmä tukee alaikäisen puolesta asiointia"
* extension[SupportsMinor].value[x] only boolean
* extension[SupportsProxy] ^requirements = "84.2 Järjestelmä tukee puolesta-asiointia valtakirjalla täysi-ikäisen puolesta"
* extension[SupportsProxy].value[x] only boolean
* extension[SupportsRegister] ^requirements = "84.3 Järjestelmä tukee rekisteripohjaista puolesta-asiointia täysi-ikäisen puolesta"
* extension[SupportsRegister].value[x] only boolean
* url = "http://hl7.fi/fhir/StructureDefinition/SelfServiceExtension" (exactly)