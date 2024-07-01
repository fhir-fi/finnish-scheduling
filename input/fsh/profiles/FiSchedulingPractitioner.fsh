Profile: FiSchedulingPractitioner
Parent: Practitioner
Id: fi-scheduling-practitioner
Description: "Practitioner details for Finnish Scheduling (including various Finnish social and healthcare professional id types)."
* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    sliceIdentifierOfficial 0..1 and
    sliceIdentifierTerhikki 0..1 and
    sliceIdentifierVRK 0..1
* identifier[sliceIdentifierOfficial].use 1..
* identifier[sliceIdentifierOfficial].use = #official (exactly)
* identifier[sliceIdentifierOfficial].type ..0
* identifier[sliceIdentifierOfficial].system 1..
* identifier[sliceIdentifierOfficial].system = "urn:oid:1.2.246.21" (exactly)
* identifier[sliceIdentifierOfficial].system ^requirements = "Ammattihenkilön hetu\r\n\r\nThere are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers."
* identifier[sliceIdentifierOfficial].value 1..
* identifier[sliceIdentifierOfficial].period ..0
* identifier[sliceIdentifierOfficial].assigner ..0
* identifier[sliceIdentifierTerhikki].use ..0
* identifier[sliceIdentifierTerhikki].type ..0
* identifier[sliceIdentifierTerhikki].system 1..
* identifier[sliceIdentifierTerhikki].system = "urn:oid:1.2.246.537.26" (exactly)
* identifier[sliceIdentifierTerhikki].system ^requirements = "Terveydenhuollon ammattihenkilöiden keskusrekisteirn tunnus\r\n\r\nThere are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers."
* identifier[sliceIdentifierTerhikki].value 1..
* identifier[sliceIdentifierTerhikki].period ..0
* identifier[sliceIdentifierTerhikki].assigner ..0
* identifier[sliceIdentifierVRK].use ..0
* identifier[sliceIdentifierVRK].type ..0
* identifier[sliceIdentifierVRK].system 1..
* identifier[sliceIdentifierVRK].system = "urn:oid:1.2.246.537.29" (exactly)
* identifier[sliceIdentifierVRK].system ^requirements = "VRK:n yksilöivä tunnus\r\n\r\nThere are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers."
* identifier[sliceIdentifierVRK].value 1..
* identifier[sliceIdentifierVRK].period ..0
* identifier[sliceIdentifierVRK].assigner ..0
* active ..0
* name ..1
* address ..0
* photo ..1
* qualification ..0
* communication ^requirements = "Kielet, jolla kykenee palvelemaan\r\n\r\nKnowing which language a practitioner speaks can help in facilitating communication with patients."
* communication.coding.system = "1.2.246.537.5.40175.2008" (exactly)