Extension: CustomerJourneyExtension
Description: "Identifier for the customer journey (*hoitopolku*)"
Context: "StructureDefinition"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    CustomerJourneyId 0..1 and
    CustomerJourneyName 0..1
* extension[CustomerJourneyId].value[x] only Identifier
* extension[CustomerJourneyName].value[x] only string
