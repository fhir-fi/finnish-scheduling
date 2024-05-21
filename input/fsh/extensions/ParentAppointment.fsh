Extension: ParentAppointment
Id: 089c6932-3bcd-4a0e-9997-92aa11b3f8db
Description: """Master appointment reference using identifier type
Pääajanvarauksen tunniste"""
Context: "Appointment"
* ^meta.lastUpdated = "2021-03-09T07:12:01.076+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/ParentAppointment"
* ^status = #draft
* ^date = "2020-01-02T13:32:11.9743331+00:00"
* . ..1
* url = "http://hl7.fi/fhir/StructureDefinition/ParentAppointment" (exactly)
* value[x] only Identifier