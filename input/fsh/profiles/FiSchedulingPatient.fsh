Profile: FiSchedulingPatient
Parent: Patient
Id: fi-scheduling-patient
Description: "Resource profile for patient to be used in Finnish social and healthcare setting. Supports one official and one temporary id. Supports home municipality extension."
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingPatient"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains HomeMunicipalityExtension named homeMunicipality 0..*
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^requirements = "51 Asiakkaan tunniste, virallinen henkilötunnus tai tilapäinen yksilöintitunnus"
* identifier contains
    sliceIdentifierOfficial 0..1 and
    sliceIdentifierTemp 0..1
* identifier[sliceIdentifierOfficial].use = #official (exactly)
* identifier[sliceIdentifierOfficial].use ^definition = "Virallinen henkilötunnus"
* identifier[sliceIdentifierOfficial].use ^requirements = "Virallinen henkilötunnus"
* identifier[sliceIdentifierOfficial].system 1..
* identifier[sliceIdentifierOfficial].system = "urn:oid:1.2.246.21" (exactly)
* identifier[sliceIdentifierOfficial].value 1..
* identifier[sliceIdentifierTemp].use = #temp (exactly)
* identifier[sliceIdentifierTemp].system 1..
* identifier[sliceIdentifierTemp].value 1..
* name 1..
* name ^requirements = "52 Asiakkaan nimi"
* telecom ^requirements = "Puhelinnumero ja sähköposti"
* address ^requirements = "54 Asiakkaan osoitetiedot"
* contact.relationship ^requirements = "61 Yhteyshenkilön tyyppi \r\nUsed to determine which contact person is the most relevant to approach, depending on circumstances."
// We could create a slicing definition that demands that one of the codings is from
// Ajanvaraus - Yhteyshenkilön tyyppi (which is 1.2.246.537.6.882, by the way).
// Anyway, it is not appropriate to not allow for other codings to be present.
// * contact.relationship.coding.system = "urn:oid:1.2.245.537.6.882" (exactly)
* contact.name ^requirements = "62 Yhteyshenkilön nimi\r\nContact persons need to be identified by name, but it is uncommon to need details about multiple other names for that contact person."
* contact.telecom ^requirements = "64 Yhteyshenkilön yhteystieto\r\nPeople have (primary) ways to contact them in some way such as phone, email."
* contact.address ^requirements = "63 Yhteyshenkilön osoitetiedot\r\nNeed to keep track where the contact person can be contacted per postal mail or visited."
// Code set 1.2.246.537.5.40175 is essentially ISO 639. Other expressions of that standard should be allowed too.
// * communication.language.coding.system = "urn:oid:1.2.246.537.5.40175.2008" (exactly)
