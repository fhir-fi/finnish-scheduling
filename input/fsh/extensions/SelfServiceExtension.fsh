Extension: SelfServiceExtension
Id: self-service-info
Title: "Self Service Information"
Description: "Extension that notifies whether there is a self service for managing appointment (provides URL and information on whether management can be made by proxy)."
Context: Appointment
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    URL 1..1 and
    SupportsMinor 0..1 and
    SupportsProxy 0..1 and
    SupportsRegister 0..1
* extension[URL].value[x] only url
* extension[SupportsMinor].value[x] only boolean
* extension[SupportsProxy].value[x] only boolean
* extension[SupportsRegister].value[x] only boolean
