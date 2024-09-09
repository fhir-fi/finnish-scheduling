Extension: RequestedServiceExtension
Id: RequestedServiceExtension
Description: "Extension for providing additional information for appointment service: reserved product/service."
Context: Appointment
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RequestedServiceId 0..1 and
    RequestedServiceName 0..1
* extension[RequestedServiceId].value[x] only Identifier
* extension[RequestedServiceName].value[x] only string
