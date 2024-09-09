Instance: appointmentstatus-ajanvarauksentila
InstanceOf: ConceptMap
Title: "Appointment status to Ajanvarauksen tila"
Description: "Mapping between FHIR Appoinment status codes and the Finnish logical model [*Ajanvaraus - Ajanvarauksen tila*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943) (oid `1.2.246.537.6.881`)."
Usage: #definition
* name = "FiAppointmentStatusCodeMap"
* status = #draft
* experimental = false
* sourceCanonical = "http://hl7.org/fhir/ValueSet/appointmentstatus"
* targetUri = "https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943"
* group
  * source = "http://hl7.org/fhir/appointmentstatus"
  * target = "https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943"
  * element
    * code = #proposed
    * display = "Proposed"
    * target
      * code = #8
      * display = "Ehdotettu"
      * equivalence = #wider
      * comment = "The Finnish logical model does not separate between proposed and pending codes"
  * element[+]
    * code = #pending
    * display = "Pending"
    * target
      * code = #8
      * display = "Ehdotettu"
      * equivalence = #wider
      * comment = "The Finnish logical model does not separate between proposed and pending codes"
  * element[+]
    * code = #booked
    * display = "Booked"
    * target
      * code = #3
      * display = "Varattu"
      * equivalence = #equal
  * element[+]
    * code = #arrived
    * display = "Arrived"
    * target
      * code = #10
      * display = "Ilmoittautunut"
      * equivalence = #wider
      * comment = "The Finnish logical model does not separate between arrived and checked-in codes"
  * element[+]
    * code = #fulfilled
    * display = "Fulfilled"
    * target
      * code = #6
      * display = "Alkanut"
      * equivalence = #narrower
      * comment = "Use Alkanut when the encounter of this Appointment is in progress"
    * target
      * code = #7
      * display = "Toteutunut"
      * equivalence = #narrower
      * comment = "Use Toteutunut when the service related to the Appointment has begun or is completed"
  * element[+]
    * code = #cancelled
    * display = "Cancelled"
    * target
      * code = #4
      * display = "Peruttu"
      * equivalence = #equal
  * element[+]
    * code = #noshow
    * display = "No Show"
    * target
      * code = #9
      * display = "Saapumatta"
      * equivalence = #equal
  * element[+]
    * code = #entered-in-error
    * display = "Entered in error"
    * target
      * equivalence = #unmatched
      * comment = "There is no code for erroneously entered records in the Finnish logical model"
  * element[+]
    * code = #checked-in
    * display = "Checked In"
    * target
      * code = #10
      * display = "Ilmoittautunut"
      * equivalence = #equivalent
      * comment = "The Finnish logical model does not separate between arrived and checked-in codes"
  * element[+]
    * code = #waitlist
    * display = "Waitlisted"
    * target
      * code = #1
      * display = "Suunniteltu"
      * equivalence = #narrower
      * comment = "Use Suunniteltu when no service provider has been identified"
    * target[+]
      * code = #2
      * display = "Tilattu"
      * equivalence = #narrower
      * comment = "Use Tilattu when a service provider has been identified"
