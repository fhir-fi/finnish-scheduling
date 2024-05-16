Profile: FinnishSchedulingPatient
Parent: Patient
Id: FinnishSchedulingPatient
Description: "Resource profile for patient to be used in Finnish social and healthcare setting. Supports one official and one temporary id. Supports home municipality extension."
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2020-01-02T11:46:32.409+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FinnishSchedulingPatient"
* ^status = #draft
* ^date = "2020-01-02T11:46:31.2851421Z"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains HomeMunicipalityExtension named homeMunicipality 0..*
* identifier 1..2
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
* identifier[sliceIdentifierOfficial].type ..0
* identifier[sliceIdentifierOfficial].system 1..
* identifier[sliceIdentifierOfficial].system = "urn:oid:1.2.246.21" (exactly)
* identifier[sliceIdentifierOfficial].value 1..
* identifier[sliceIdentifierOfficial].period ..0
* identifier[sliceIdentifierOfficial].assigner ..0
* identifier[sliceIdentifierTemp].use = #temp (exactly)
* identifier[sliceIdentifierTemp].type ..0
* identifier[sliceIdentifierTemp].system 1..
* identifier[sliceIdentifierTemp].value 1..
* identifier[sliceIdentifierTemp].period ..0
* identifier[sliceIdentifierTemp].assigner ..0
* active ..0
* name 1..1
* name ^requirements = "52 Asiakkaan nimi"
* name.period ..0
* telecom ^requirements = "Puhelinnumero ja sähköposti"
* deceased[x] ..0
* address ..1
* address ^requirements = "54 Asiakkaan osoitetiedot"
* address.type ..0
* address.district ..0
* address.state ..0
* address.period ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact.relationship ..1
* contact.relationship ^requirements = "61 Yhteyshenkilön tyyppi \r\nUsed to determine which contact person is the most relevant to approach, depending on circumstances."
* contact.relationship.coding.system = "urn:oid:1.2.245.537.6.882" (exactly)
* contact.name ^requirements = "62 Yhteyshenkilön nimi\r\nContact persons need to be identified by name, but it is uncommon to need details about multiple other names for that contact person."
* contact.name.period ..0
* contact.telecom ^requirements = "64 Yhteyshenkilön yhteystieto\r\nPeople have (primary) ways to contact them in some way such as phone, email."
* contact.telecom.period ..0
* contact.address ^requirements = "63 Yhteyshenkilön osoitetiedot\r\nNeed to keep track where the contact person can be contacted per postal mail or visited."
* contact.gender ..0
* contact.organization ..0
* contact.period ..0
* communication.language.coding.system = "urn:oid:1.2.246.537.5.40175.2008" (exactly)
* generalPractitioner ..0
* managingOrganization ..0
* link ..0