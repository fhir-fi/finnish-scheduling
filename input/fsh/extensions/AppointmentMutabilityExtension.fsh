Extension: AppointmentMutabilityExtension
Id: mutable
Title: "Appointment Mutability"
Description: "Extension specifying whether appointment can be changed and when."
Context: Appointment
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
