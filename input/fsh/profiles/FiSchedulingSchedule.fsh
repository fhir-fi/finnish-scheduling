Profile: FiSchedulingSchedule
Parent: Schedule
Id: fi-scheduling-schedule
Description: "Finnish profile for Schedule."
* identifier 1..
// We could create a slicing definition that demands that one of the categories is from
// AR/YDIN - Palvelutapahtumaluokitus. Let's see if we want even this.
// Anyway, it is not appropriate to not allow for other categories to be present.
// * serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
// We could create a slicing definition that demands that one of the service types is from
// THL - Sosiaali- ja terveysalan palvelunimikkeistö. Let's see if we want even this.
// Anyway, it is not appropriate to not allow for other types to be present.
// * serviceType ..1
// * serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
// * serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
