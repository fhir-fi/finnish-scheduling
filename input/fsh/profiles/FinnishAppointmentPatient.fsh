Profile: FinnishAppointmentPatient
Parent: Patient
Id: FinnishAppointmentPatient
Description: """Resource profile for patient to be used in Finnish social and healthcare setting. 
Supports official and temporary national ids. Supports home municipality extension."""
* ^meta.lastUpdated = "2021-03-08T11:48:07.784+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FinnishAppointmentPatient"
* ^status = #draft
* ^experimental = false
* ^date = "2021-03-02T11:11:39.6021691+00:00"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains HomeMunicipalityExtension named homeMunicipality 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains
    sliceIdentifierOfficial 0..* and
    sliceIdentifierTemp 0..*
* identifier[sliceIdentifierOfficial] ^fixedIdentifier.use = #official
* identifier[sliceIdentifierOfficial].use = #official (exactly)
* identifier[sliceIdentifierOfficial].use ^definition = "Virallinen henkilötunnus"
* identifier[sliceIdentifierOfficial].use ^requirements = "Virallinen henkilötunnus"
* identifier[sliceIdentifierOfficial].system 1..
* identifier[sliceIdentifierOfficial].system = "urn:oid:1.2.246.21" (exactly)
* identifier[sliceIdentifierOfficial].value 1..
* identifier[sliceIdentifierTemp] ^fixedIdentifier.use = #temp
* identifier[sliceIdentifierTemp].use = #temp (exactly)
* identifier[sliceIdentifierTemp].system 1..
* identifier[sliceIdentifierTemp].value 1..
* contact.relationship.coding.system = "urn:oid:1.2.246.537.6.882" (exactly)
* communication.language.coding.system = "urn:oid:1.2.246.537.5.40175.2008" (exactly)