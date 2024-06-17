Profile: FiSchedulingSchedule
Parent: Schedule
Id: FiSchedulingSchedule
Description: "Finnish profile for Schedule"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingSchedule"
* ^status = #draft
* identifier 1..1
* identifier.use 0..
* identifier.period 0..
* identifier.assigner 0..
* serviceCategory ..1
* serviceCategory ^requirements = "71.1 Palvelun luokka"
* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceCategory.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
* serviceType ..1
* serviceType ^requirements = "71 Palvelun nimi"
* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* specialty ..0