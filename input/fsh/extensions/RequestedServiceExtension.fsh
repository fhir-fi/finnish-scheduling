Extension: RequestedServiceExtension
Id: RequestedServiceExtension
Description: "Extension for providing additional information for appointment service: reserved product/service. 73 Varaustuote 73.1 Varaustuotteen nimi"
Context: "Appointment"
* ^url = "http://hl7.fi/fhir/StructureDefinition/RequestedServiceExtension"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RequestedServiceId 0..1 and
    RequestedServiceName 0..1
* extension[RequestedServiceId] ^requirements = "73 Varaustuote"
* extension[RequestedServiceId].value[x] only Identifier
* extension[RequestedServiceId].value[x].use ..0
* extension[RequestedServiceId].value[x].type ..0
* extension[RequestedServiceId].value[x].period ..0
* extension[RequestedServiceName] ^requirements = "73.1 Varaustuotteen nimi"
* extension[RequestedServiceName].value[x] only string
* url = "http://hl7.fi/fhir/StructureDefinition/RequestedServiceExtension" (exactly)