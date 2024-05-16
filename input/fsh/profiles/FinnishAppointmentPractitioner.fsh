Profile: FinnishAppointmentPractitioner
Parent: Practitioner
Id: ba85996c-070b-4e86-992e-4be8a61e4583
Description: "Practitioner details for Finnish Scheduling (including various Finnish social and healthcare professional id types)"
* ^meta.lastUpdated = "2021-03-08T12:31:22.875+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FinnishSchedulingPractitioner"
* ^status = #draft
* ^date = "2021-03-08T12:30:28.1324383+00:00"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    sliceIdentifierOfficial 0..1 and
    sliceIdentifierTerhikki 0..1 and
    sliceIdentifierVRK 0..1
* identifier[sliceIdentifierOfficial].use 1..
* identifier[sliceIdentifierOfficial].use = #official (exactly)
* identifier[sliceIdentifierOfficial].system 1..
* identifier[sliceIdentifierOfficial].system = "urn:oid:1.2.246.21" (exactly)
* identifier[sliceIdentifierOfficial].system ^short = "Ammattihenkilön hetu"
* identifier[sliceIdentifierOfficial].value 1..
* identifier[sliceIdentifierTerhikki].system 1..
* identifier[sliceIdentifierTerhikki].system = "urn:oid:1.2.246.537.26" (exactly)
* identifier[sliceIdentifierTerhikki].system ^short = "Terveydenhuollon ammattihenkilöiden keskusrekisterin tunnus"
* identifier[sliceIdentifierTerhikki].value 1..
* identifier[sliceIdentifierVRK].system 1..
* identifier[sliceIdentifierVRK].system = "urn:oid:1.2.246.537.29" (exactly)
* identifier[sliceIdentifierVRK].system ^short = "VRK:n yksilöivä tunnus"
* identifier[sliceIdentifierVRK].value 1..
* communication.coding.system = "1.2.246.537.5.40175.2008" (exactly)