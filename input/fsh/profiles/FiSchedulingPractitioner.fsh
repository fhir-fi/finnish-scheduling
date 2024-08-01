Profile: FiSchedulingPractitioner
Parent: Practitioner
Id: fi-scheduling-practitioner
Description: "Practitioner details for Finnish Scheduling (including various Finnish social and healthcare professional id types)."
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    sliceIdentifierOfficial 0..1 and
    sliceIdentifierTerhikki 0..1 and
    sliceIdentifierVRK 0..1
* identifier[sliceIdentifierOfficial].use 1.. // Why do we allow for more uses, if the value is fixed?
* identifier[sliceIdentifierOfficial].use = #official (exactly)
* identifier[sliceIdentifierOfficial].system 1.. // Why do we allow for more systems, if the value is fixed?
* identifier[sliceIdentifierOfficial].system = "urn:oid:1.2.246.21" (exactly)
* identifier[sliceIdentifierOfficial].system ^requirements = "Ammattihenkilön hetu\r\n\r\nThere are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers."
* identifier[sliceIdentifierOfficial].value 1..
* identifier[sliceIdentifierTerhikki].system 1..
* identifier[sliceIdentifierTerhikki].system = "urn:oid:1.2.246.537.26" (exactly)
* identifier[sliceIdentifierTerhikki].system ^requirements = "Terveydenhuollon ammattihenkilöiden keskusrekisteirn tunnus\r\n\r\nThere are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers."
* identifier[sliceIdentifierTerhikki].value 1..
* identifier[sliceIdentifierVRK].system 1..
* identifier[sliceIdentifierVRK].system = "urn:oid:1.2.246.537.29" (exactly)
* identifier[sliceIdentifierVRK].system ^requirements = "VRK:n yksilöivä tunnus\r\n\r\nThere are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers."
* identifier[sliceIdentifierVRK].value 1..
* communication ^requirements = "Kielet, jolla kykenee palvelemaan\r\n\r\nKnowing which language a practitioner speaks can help in facilitating communication with patients."
// Code set 1.2.246.537.5.40175 is essentially ISO 639. Other expressions of that standard should be allowed too.
// * communication.coding.system = "1.2.246.537.5.40175.2008" (exactly)