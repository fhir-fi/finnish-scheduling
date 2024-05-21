Extension: PractitionerGenderExtension
Id: PractitionerGenderExtension
Description: """Extension for practitioner gender for appointment.
93 Palvelun toteuttajan sukupuoli"""
Context: "FinnishSchedulingAppointment"
* ^meta.lastUpdated = "2020-01-02T13:34:11.046+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/PractitionerGenderExtension"
* ^status = #draft
* ^date = "2020-01-02T13:34:10.7628675+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/PractitionerGenderExtension" (exactly)
* value[x] only Coding
* value[x] ^requirements = "93 Palvelun toteuttajan sukupuoli"
* value[x].system = "urn:oid:1.2.246.537.5.1.1997" (exactly)
* value[x].system ^short = "AR/YDIN - Sukupuoli"
* value[x].version ..0