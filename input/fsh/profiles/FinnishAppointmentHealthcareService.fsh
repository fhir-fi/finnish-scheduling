Profile: FinnishAppointmentHealthcareService
Parent: HealthcareService
Id: 64cde6f0-1939-4309-bd9f-1a088e197844
Description: "Finnish profile for healthcare service."
* ^meta.lastUpdated = "2021-03-08T11:49:34.202+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FinnishAppointmentHealthcareService"
* ^status = #draft
* ^date = "2020-11-09T09:14:56.7993669Z"
* category.coding.system = "urn:oid:1.2.246.537.6.50.201801" (exactly)
* category.coding.system ^short = "THL - Sosiaali- ja terveyspalvelujen luokitus"
* type 1..1
* type.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* type.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* specialty ..1
* specialty.coding.system = "urn:oid:1.2.246.537.6.24.2003" (exactly)
* specialty.coding.system ^short = "Hilmo - Terveydenhuollon erikoisalat versio"