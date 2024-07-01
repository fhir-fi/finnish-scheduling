Profile: FiSchedulingSlot
Parent: Slot
Id: fi-scheduling-slot
Description: "Finnish profile for Slot"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingSlot"
* serviceCategory ^requirements = "71.1 Palvelun luokka"
// We could create a slicing definition that demands that one of the categories is from
// AR/YDIN - Palvelutapahtumaluokitus.
// Anyway, it is not appropriate to not allow for other categories to be present.
//* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceCategory.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
* serviceType 1..
* serviceType ^requirements = "71 Palvelun nimi"
//* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* appointmentType ^requirements = "72 Asiointitapa"
// We could create a slicing definition that demands that one of the codings is from
// THL - Asiointitapa.
// Anyway, it is not appropriate to not allow for other types to be present.
// * appointmentType.coding ..1
// * appointmentType.coding.system = "urn:oid:1.2.246.537.6.884.2015" (exactly)
// * appointmentType.coding.system ^short = "THL - Asiointitapa"