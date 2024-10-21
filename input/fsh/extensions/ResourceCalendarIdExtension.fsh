Extension: ResourceCalendarIdExtension
Id: resource-calendar
Title: "Resource Calendar"
Description: "Extension for resource calendar id and resource name."
Context: Appointment
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ResourceCalendarId 0..* and
    ResourceCalendarName 0..1
* extension[ResourceCalendarId].value[x] only Identifier
* extension[ResourceCalendarName].value[x] only string
