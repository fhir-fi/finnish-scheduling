Profile: FiSchedulingPractitionerRole
Parent: PractitionerRole
Id: fi-scheduling-practitioner-role
Description: "Role information for the practitioner."
* specialty ^requirements = "Hilmo - Terveydenhuollon erikoisalat"
// We could create a slicing definition that demands that one of the categories is from
// Hilmo - Terveydenhuollon erikoisalat.
// However, it is not appropriate to not allow for other coding systems to be present.
// * specialty.coding.system = "urn:oid:1.2.246.537.6.24.2003" (exactly)
* location ^requirements = "Työskentely-yksikkö"
