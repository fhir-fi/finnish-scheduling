Profile: FinnishAppointmentSlot
Parent: Slot
Id: FinnishAppointmentSlot
Description: "Finnish profile for Slot"
* ^meta.lastUpdated = "2021-03-02T11:57:13.997+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FinnishAppointmentSlot"
* ^status = #draft
* ^date = "2021-03-02T11:23:57.7391705+00:00"
* identifier ..1
* serviceCategory ..1
* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.50.201801" (exactly)
* serviceCategory.coding.system ^short = "THL - Sosiaali- ja terveyspalvelujen luokitus"
* serviceType ..1
* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* appointmentType.coding ..1
* appointmentType.coding.system = "urn:oid:1.2.246.537.6.884.2015" (exactly)
* appointmentType.coding.system ^short = "THL - Asiointitapa"