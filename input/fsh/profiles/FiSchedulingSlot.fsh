Profile: FiSchedulingSlot
Parent: Slot
Id: fi-scheduling-slot
Description: "Finnish profile for Slot."
// We could create a slicing definition that demands that one of the categories is from
// AR/YDIN - Palvelutapahtumaluokitus.
// Anyway, it is not appropriate to not allow for other categories to be present.
//* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceType 1..
//* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
// We could create a slicing definition that demands that one of the codings is from
// THL - Asiointitapa.
// Anyway, it is not appropriate to not allow for other types to be present.
// * appointmentType.coding ..1
// * appointmentType.coding.system = "urn:oid:1.2.246.537.6.884.2015" (exactly)
// * appointmentType.coding.system ^short = "THL - Asiointitapa"