Profile: FiSchedulingHealthcareService
Parent: HealthcareService
Id: fi-scheduling-healthcareService
Description: "Finnish profile for healthcare service."
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingHealthcareService"
* category ..1
* category ^requirements = "71.1 Palvelun luokka"
* category.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* category.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
* type 1..1
* type ^requirements = "hl7fi: 71 Palvelun nimi"
* type.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* type.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* specialty ..1
* specialty ^definition = "hl7fi: for service specific needs to eg pinpoint the service type like occupational healthcare, orthopedics\r\n\r\n--\r\n\r\nCollection of specialties handled by the service site. This is more of a medical term."
* specialty.coding.system = "urn:oid:1.2.246.537.6.24.2003" (exactly)
* specialty.coding.system ^short = "Hilmo - Terveydenhuollon erikoisalat versio"