Extension: HomeMunicipalityExtension
Description: "An extension for patient home municipality."
Context: Patient
* value[x] 1..
* value[x] only Coding
* value[x].system 1..
* value[x].system = "urn:oid:1.2.246.537.6.21.2003" (exactly)
* value[x].system ^short = "VRK/THL - Kuntakoodit"
* value[x].system ^definition = "VRK/THL - Kuntakoodit"
* value[x].code 1..
* value[x].display 1..