Profile: FiSchedulingSchedule
Parent: Schedule
Id: fi-scheduling-schedule
Description: "Finnish profile for Schedule"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingSchedule"
* identifier 1..
* identifier.use 0..
* identifier.period 0..
* identifier.assigner 0..
* serviceCategory ^requirements = "71.1 Palvelun luokka"
// We could create a slicing definition that demands that one of the categories is from
// AR/YDIN - Palvelutapahtumaluokitus. Let's see if we want even this.
// Anyway, it is not appropriate to not allow for other categories to be present.
// * serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceCategory.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
// We could create a slicing definition that demands that one of the service types is from
// THL - Sosiaali- ja terveysalan palvelunimikkeistö. Let's see if we want even this.
// Anyway, it is not appropriate to not allow for other types to be present.
// * serviceType ..1
// * serviceType ^requirements = "71 Palvelun nimi"
// * serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
// * serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
