Profile: FiSchedulingHealthcareService
Parent: HealthcareService
Id: fi-scheduling-healthcare-service
Description: "Finnish profile for healthcare service."
// We could create a slicing definition that demands that one of the categories is from
// Palvelutapahtumaluokitus. Let's see if we want even this. Anyway, it is not appropriate to not
// allow for other categories to be present.
// * category ..1
// * category ^requirements = "71.1 Palvelun luokka"
// * category.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
// * category.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
* type 1..
* type.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* specialty.coding.system = "urn:oid:1.2.246.537.6.24.2003" (exactly)
