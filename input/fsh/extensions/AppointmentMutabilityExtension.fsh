Extension: AppointmentMutabilityExtension
Id: AppointmentMutabilityExtension
Description: "Extension for FinnishAppointment specifying whether appointment can be changed and when."
Context: "FinnishSchedulingAppointment"
* ^meta.lastUpdated = "2021-03-09T07:07:04.484+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/AppointmentMutabilityExtension"
* ^status = #draft
* ^date = "2020-01-02T13:24:30.3493133+00:00"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    Cancellable 0..1 and
    Reschedulable 0..1 and
    NotAfter 0..1
* extension[Cancellable].value[x] only boolean
* extension[Reschedulable].value[x] only boolean
* extension[NotAfter].value[x] only dateTime
* url = "http://hl7.fi/fhir/StructureDefinition/AppointmentMutabilityExtension" (exactly)