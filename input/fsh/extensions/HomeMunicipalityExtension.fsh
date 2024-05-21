Extension: HomeMunicipalityExtension
Id: HomeMunicipalityExtension
Description: "An extension for patient home municipality."
Context: Patient
* ^meta.lastUpdated = "2021-03-02T11:20:20.274+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/HomeMunicipalityExtension"
* ^status = #draft
* ^date = "2021-03-02T11:15:37.631753+00:00"
* . ..1
* url = "http://hl7.fi/fhir/StructureDefinition/HomeMunicipalityExtension" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x].system 1..
* value[x].system = "urn:oid:1.2.246.537.6.21.2003" (exactly)
* value[x].system ^short = "VRK/THL - Kuntakoodit"
* value[x].system ^definition = "VRK/THL - Kuntakoodit"
* value[x].code 1..
* value[x].display 1..