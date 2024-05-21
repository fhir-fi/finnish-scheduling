Extension: CustomerJourneyExtension
Id: CustomerJourneyExtension
Description: """Identifier for the customer journey (hoitopolku)
20 Asiakaspolun tunniste
20.1 Asiakaspolun nimi"""
Context: "StructureDefinition"
* ^meta.lastUpdated = "2020-01-02T13:26:12.428+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/CustomerJourneyExtension"
* ^status = #draft
* ^date = "2020-01-02T13:26:12.1301441+00:00"
* . ^comment = "20 Asiakaspolun tunniste\r\n20.1 Asiakaspolun nimi"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    CustomerJourneyId 0..1 and
    CustomerJourneyName 0..1
* extension[CustomerJourneyId] ^requirements = "20 Asiakaspolun tunniste"
* extension[CustomerJourneyId].value[x] only Identifier
* extension[CustomerJourneyId].value[x].use ..0
* extension[CustomerJourneyId].value[x].type ..0
* extension[CustomerJourneyId].value[x].period ..0
* extension[CustomerJourneyName] ^requirements = "20.1 Asiakaspolun nimi"
* extension[CustomerJourneyName].value[x] only string
* url = "http://hl7.fi/fhir/StructureDefinition/CustomerJourneyExtension" (exactly)