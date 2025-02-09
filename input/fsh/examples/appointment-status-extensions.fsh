Instance: Appointment01Waitlisted
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Waitlisted, Suunniteltu). This appointment is created when the need for the appointment has been identified."
Usage: #example
* id = "appointment-status-extension-01"
* meta.lastUpdated = "2019-12-14T09:16:34.659+03:00"
* status = #waitlist
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#1 "Suunniteltu"
* created = "2019-12-14T09:16:34+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #tentative

Instance: Appointment02Proposed
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Proposed, Tilattu). Also the service provider has been identified (it could be just an organization, not necessarily a practiotioner yet)."
Usage: #example
* id = "appointment-status-extension-02"
* meta.lastUpdated = "2019-12-14T15:17:11.012+03:00"
* status = #proposed
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#2 "Tilattu"
* created = "2019-12-14T09:16:34+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #tentative
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #tentative

Instance: Appointment03Pending
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Pending, Ehdotettu). Schedule of the practitioner has been confirmed, time has been proposed to the patient."
Usage: #example
* id = "appointment-status-extension-03"
* meta.lastUpdated = "2019-12-14T15:17:11.012+03:00"
* status = #pending
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#1 "Suunniteltu"
* start = "2020-01-04T13:20:00+03:00"
* end = "2020-01-04T13:40:00+03:00"
* created = "2019-12-14T09:16:34+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #needs-action
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted

Instance: Appointment04Cancelled
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Cancelled, Peruttu). The patient moves the appointment to another time. This appointment is cancelled and a new one is created."
Usage: #example
* id = "appointment-status-extension-04"
* meta.lastUpdated = "2019-12-22T19:26:03.884+03:00"
* status = #cancelled
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#4 "Peruttu"
* cancelationReason = http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#pat-cpp "Patient: Canceled via Patient Portal"
* start = "2020-01-04T13:20:00+03:00"
* end = "2020-01-04T13:40:00+03:00"
* created = "2019-12-14T09:16:34+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #declined
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted

Instance: Appointment05Proposed
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Proposed, Tilattu). This is created when the patient searches for a new time for the appointment."
Usage: #example
* id = "appointment-status-extension-05"
* meta.lastUpdated = "2019-12-22T19:24:17.613+03:00"
* status = #proposed
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#2 "Tilattu"
* start = "2020-01-07T09:00:00+03:00"
* end = "2020-01-07T09:20:00+03:00"
* created = "2019-12-22T19:24:17+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #tentative
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #tentative

Instance: Appointment06Booked
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Booked, Varattu). The patient has accepted the new time for the appointment."
Usage: #example
* id = "appointment-status-extension-06"
* meta.lastUpdated = "2019-12-22T19:26:03.719+03:00"
* status = #booked
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#3 "Varattu"
* start = "2020-01-07T09:00:00+03:00"
* end = "2020-01-07T09:20:00+03:00"
* created = "2019-12-22T19:24:17+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #accepted
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted

Instance: Appointment07Arrived
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Arrived, Varattu). The patient has arrived to location."
Usage: #example
* id = "appointment-status-extension-07"
* meta.lastUpdated = "2020-07-22T08:51:13.431+03:00"
* status = #arrived
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#3 "Varattu"
* start = "2020-01-07T09:00:00+03:00"
* end = "2020-01-07T09:20:00+03:00"
* created = "2019-12-22T19:24:17+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #accepted
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted

Instance: Appointment08CheckedIn
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Checked In, Ilmoittautunut). The patient has been checked in."
Usage: #example
* id = "appointment-status-extension-08"
* meta.lastUpdated = "2020-07-22T08:52:51.420+03:00"
* status = #checked-in
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#10 "Ilmoittautunut"
* start = "2020-01-07T09:00:00+03:00"
* end = "2020-01-07T09:20:00+03:00"
* created = "2019-12-22T19:24:17+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #accepted
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted

Instance: Appointment09Fulfilled
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Fulfilled, Alkanut). The encounter has started."
Usage: #example
* id = "appointment-status-extension-09"
* meta.lastUpdated = "2020-07-22T09:03:01.178+03:00"
* status = #fulfilled
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#6 "Alkanut"
* start = "2020-01-07T09:00:00+03:00"
* end = "2020-01-07T09:20:00+03:00"
* created = "2019-12-22T19:24:17+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #accepted
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted

Instance: Appointment10Finalized
/* InstanceOf: FiSchedulingAppointment Update when we publish base profiles v2*/ 
InstanceOf: Appointment
Description: "Example Appointment (Fulfilled, Toteutunut). The encounter has ended."
Usage: #example
* id = "appointment-status-extension-10"
* meta.lastUpdated = "2020-07-22T09:19:18.035+03:00"
* status = #fulfilled
  * extension
    * url = "https://hl7.fi/fhir/finnish-scheduling/StructureDefinition/ajanvarauksen-tila"
    * valueCoding = urn:oid:1.2.246.537.6.881#7 "Toteutunut"
* start = "2020-01-07T09:00:00+03:00"
* end = "2020-01-07T09:20:00+03:00"
* created = "2019-12-22T19:24:17+03:00"
* participant
  * actor = Reference(PetriPotilas)
  * status = #accepted
* participant[+]
  * actor = Reference(KeijoKatilo)
  * status = #accepted
