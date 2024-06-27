Profile: FiSchedulingSlot
Parent: Slot
Id: FiSchedulingSlot
Description: "Finnish profile for Slot"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingSlot"
* identifier ..1
* identifier.use 0..
* identifier.period 0..
* identifier.assigner 0..
* serviceCategory ..1
* serviceCategory ^requirements = "71.1 Palvelun luokka"
* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceCategory.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
* serviceType 1..1
* serviceType ^requirements = "71 Palvelun nimi"
* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* specialty ..0
* appointmentType ^requirements = "72 Asiointitapa"
* appointmentType.coding ..1
* appointmentType.coding.system = "urn:oid:1.2.246.537.6.884.2015" (exactly)
* appointmentType.coding.system ^short = "THL - Asiointitapa"