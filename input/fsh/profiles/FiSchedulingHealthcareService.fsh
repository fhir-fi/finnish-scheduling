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
// * type 1..
// * type.coding.system = "urn:oid:1.2.246.537.6.49"
// * specialty.coding.system = "urn:oid:1.2.246.537.6.24"

/*
* type ^slicing.discriminator.type = #exists
* type ^slicing.discriminator.path = "coding"
* type ^slicing.rules = #open
* type contains thlCodedType 1..*
* type[thlCodedType].coding 1..*
* type[thlCodedType].coding.system 1..1
* type[thlCodedType].coding ^slicing.discriminator.type = #value
* type[thlCodedType].coding ^slicing.discriminator.path = "system"
* type[thlCodedType].coding ^slicing.rules = #open
* type[thlCodedType].coding contains
    healthService 0..* and
    socialService 0..*
* type[thlCodedType].coding[healthService] 0..* 
* type[thlCodedType].coding[healthService].system = "urn:oid:1.2.246.537.6.49" 
* type[thlCodedType].coding[socialService] 0..* 
* type[thlCodedType].coding[socialService].system = "urn:oid:1.2.246.537.6.1222" 

*/
* type.coding.system 1..1 
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    healthService 0..* and
    socialService 0..*
* type.coding[healthService] 0..* 
* type.coding[healthService].system = "urn:oid:1.2.246.537.6.49" 
* type.coding[socialService] 0..* 
* type.coding[socialService].system = "urn:oid:1.2.246.537.6.1222" 
