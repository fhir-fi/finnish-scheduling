Extension: ServiceEvent
Id: fi-scheduling-service-event
Description: "Extension for service event id (palvelutapahtuman tunniste)."
Context: "FiSchedulingAppointment"
* ^url = "http://hl7.fi/fhir/StructureDefinition/ServiceEventExt"
* url = "http://hl7.fi/fhir/StructureDefinition/ServiceEventExt" (exactly)
* value[x] 1..
* value[x] only oid