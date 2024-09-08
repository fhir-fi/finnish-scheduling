Instance: ajanvarauksentila-appointmentstatus
InstanceOf: ConceptMap
Title: "Ajanvarauksen tila to Appointment status"
Description: "Mapping between the Finnish logical model [*Ajanvaraus - Ajanvarauksen tila*](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=1943) (oid `1.2.246.537.6.881`) and FHIR Appoinment status codes."
Usage: #definition
* name = "FinnishAppointmentStatusCodeMap"
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
      * comment = "In FHIR there is no distinction between Suunniteltu and Tilattu. The distinction is that in Tilattu the service provider has been identified."
  * element[+]
    * code = #2
    * display = "Tilattu"
    * target
      * code = #waitlist
      * display = "Waitlisted"
      * equivalence = #wider
      * comment = "In FHIR there is no distinction between Suunniteltu and Tilattu. The distinction is that in Tilattu the service provider has been identified."
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
      * comment = "There is no status for rescheduled appointments in FHIR. This code SHOULD be mapped to cancelled, if required. Note that this code is deprecated."
  * element[+]
    * code = #6
    * display = "Alkanut"
    * target
      * code = #arrived
      * display = "Arrived"
      * equivalence = #inexact
      * comment = "There is no status for an appointment being in process in FHIR. In FHIR this information is tracked with the status of the Encounter resource."
  * element[+]
    * code = #7
    * display = "Toteutunut"
    * target
      * code = #fulfilled
      * display = "Fulfilled"
      * equivalence = #inexact
      * comment = "There is no status for an appointment being in process in FHIR. In FHIR this information is tracked with the status of the Encounter resource."
  * element[+]
    * code = #8
    * display = "Ehdotettu"
    * target[0]
      * code = #proposed
      * display = "Proposed"
      * equivalence = #narrower
      * comment = "The code proposed can be used to highlight that none of the participants have finalized their acceptance, or that there is still uncertainty about the time."
    * target[+]
      * code = #pending
      * display = "Pending"
      * equivalence = #equivalent
      * comment = "The code pending is a  more generic match to Ehdotettu."
  * element[+]
    * code = #9
    * display = "Saapumatta"
    * target
      * code = #noshow
      * display = "No Show"
      * equivalence = #equal
  * element[+]
    * code = #10
    * display = "Ilmoittautunut"
    * target
      * code = #checked-in
      * display = "Checked In"
      * equivalence = #equal
