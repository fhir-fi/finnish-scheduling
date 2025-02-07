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
  * element[+]
    * code = #2
    * display = "Tilattu"
    * target
      * code = #proposed
      * display = "Proposed"
      * equivalence = #equivalent
  * element[+]
    * code = #8
    * display = "Ehdotettu"
    * target
      * code = #pending
      * display = "Pending"
      * equivalence = #equivalent
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
      * equivalence = #unmatched
      * comment = "There is no status code in FHIR for rescheduled appointments. Note that this code is deprecated."
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
      * equivalence = #unmatched
      * comment = "There is no status code in FHIR for an appointment having begun or being in process. In FHIR this information is tracked with the status of the Encounter resource."
  * element[+]
    * code = #7
    * display = "Toteutunut"
    * target
      * equivalence = #unmatched
      * comment = "There is no status code in FHIR for an appointment being in progress or completed. In FHIR this information is tracked with the status of the Encounter resource."
  * element[+]
    * code = #9
    * display = "Saapumatta"
    * target
      * code = #noshow
      * display = "No Show"
      * equivalence = #equal
