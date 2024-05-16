Extension: TicketNoExtension
Id: TicketNoExtension
Description: """Ticket number to be included in the appointment.
101 Tiketti"""
Context: "StructureDefinition"
* ^meta.lastUpdated = "2020-01-02T13:44:18.120+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/TicketNoExt"
* ^status = #draft
* ^date = "2020-01-02T13:44:17.812966+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/TicketNoExt" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^requirements = "101 Tiketti"