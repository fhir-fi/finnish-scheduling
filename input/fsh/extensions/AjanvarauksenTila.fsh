Extension: AjanvarauksenTila
Id: ajanvarauksen-tila
Title: "Ajanvarauksen tila"
Description: "Binding of [AppointmentStatus](https://hl7.org/fhir/R4/codesystem-appointmentstatus.html) to the Finnish logical model [*Ajanvarauksen tila*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943)."
Context: Appointment.status
* value[x] only Coding
* valueCoding ^short = "The coding from *Ajanvarauksen tila*"
* valueCoding.system = "urn:oid:1.2.246.537.6.881"
