Extension: CareGuaranteeExtension
Id: CareGuaranteeExtension
Description: "An extension for including care guarantee (hoitotakuu) details in appointment."
Context: "FinnishSchedulingAppointment"
* ^meta.lastUpdated = "2020-01-02T13:17:35.393+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/CareGuaranteeExtension"
* ^status = #draft
* ^date = "2020-01-02T13:17:35.1017+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/CareGuaranteeExtension" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^requirements = "97 Hoitotakuu"