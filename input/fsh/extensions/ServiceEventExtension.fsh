Extension: ServiceEventExtension
Id: ServiceEventExtension
Description: "Extension for service event id (palvelutapahtuman tunniste). 22 Palvelutapahtuman tunniste"
Context: "FinnishSchedulingAppointment"
* ^meta.lastUpdated = "2020-01-02T13:43:14.497+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/ServiceEventExt"
* ^status = #draft
* ^date = "2020-01-02T13:43:14.1963456+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/ServiceEventExt" (exactly)
* value[x] 1..
* value[x] only Identifier
* value[x] ^requirements = "22 Palvelutapahtuman tunniste"