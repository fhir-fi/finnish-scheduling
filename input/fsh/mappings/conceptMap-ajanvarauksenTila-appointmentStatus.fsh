Instance: ajanvarauksentila-appointmentstatus
InstanceOf: ConceptMap
Title: "Ajanvarauksen tila to Appointment status"
Description: "Mapping between the Finnish logical model [*Ajanvaraus - Ajanvarauksen tila*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943) (oid `1.2.246.537.6.881`) and FHIR Appointment status codes."
Usage: #definition
* name = "FiAppointmentStatusCodeMap"
* status = #draft
* experimental = false
* sourceUri = "https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943"
* targetCanonical = "http://hl7.org/fhir/ValueSet/appointmentstatus"
* group
  * source = "https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943"
  * target = "http://hl7.org/fhir/appointmentstatus"
  * element
    * code = #1
    * display = "Suunniteltu"
    * target
      * code = #waitlist
      * display = "Waitlisted"
      * equivalence = #equivalent
      * comment = "Patient and need have been identified, the service provider and time have not."
  * element[+]
    * code = #2
    * display = "Tilattu"
    * target
      * code = #proposed
      * display = "Proposed"
      * equivalence = #equivalent
      * comment = "Differs from Suunniteltu in that in Tilattu the service provider has been identified."
  * element[+]
    * code = #8
    * display = "Ehdotettu"
    * target
      * code = #pending
      * display = "Pending"
      * equivalence = #equal
  * element[+]
    * code = #3
    * display = "Varattu"
    * target
      * code = #booked
      * display = "Booked"
      * equivalence = #equal
  * element[+]
    * code = #4
    * display = "Peruttu"
    * target
      * code = #cancelled
      * display = "Cancelled"
      * equivalence = #equal
  * element[+]
    * code = #5
    * display = "Siirretty"
    * target
      * code = #cancelled
      * equivalence = #wider
      * comment = "There is no separate status code in FHIR for rescheduled appointments. Note that this code is deprecated."
  * element[+]
    * code = #10
    * display = "Ilmoittautunut"
    * target
      * code = #checked-in
      * display = "Checked In"
      * equivalence = #equal
  * element[+]
    * code = #6
    * display = "Alkanut"
    * target
      * code = #fulfilled
      * display = "Fulfilled"
      * equivalence = #wider
      * comment = "Alkanut means that the encounter has begun and is ongoing. Most FHIR systems track this with the Encounter resource. There is no such state in Appointment."
  * element[+]
    * code = #7
    * display = "Toteutunut"
    * target
      * code = #fulfilled
      * display = "Fulfilled"
      * equivalence = #wider
      * comment = "Toteutunut means that the service the appointment is for has started or is complete. Most FHIR systems track this with the Encounter resource. There is no such state in Appointment."
  * element[+]
    * code = #9
    * display = "Saapumatta"
    * target
      * code = #noshow
      * display = "No Show"
      * equivalence = #equal
