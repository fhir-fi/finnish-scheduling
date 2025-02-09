### HL7fiSched_REQ2: Book an appointment

This operation documentation is for a large part based on the one defined in [US Argonaut Scheduling implementation guide](http://www.fhir.org/guides/argonaut/scheduling/index.html). 

An appointment can be stored either by providing (as a parameter):

1. an appointment id for an appointment with suitable status (eg. proposed) already created and stored on the server or 
2. an actual constructed appointment resource proposal that is negotiable based on the resources needed (TO-BE-DEVELOPED). 

The primary usage pattern is 1 after free appointments have been queried (ie. fetching proposed appointments). 

The proper usage depends on the model of implementation (may support either or both). 

Parameters

|  **Use**  |  **Name**  |  **Cardinality**  |  **Type**  |  **Binding**  |  **Documentation** | 
| --- | --- | --- | --- | --- | --- | 
| IN |  appt-id |  0..1 |  URI |   | A resource id for one of proposed Appointments returned by a prior Query for free appointments operation. Either this or appt-resource SHALL be provided  |
| IN |  appt-resource |  0..1 | [FinnishSchedulingAppointment](https://simplifier.net/finnishschedulingr4/finnishschedulingappointment) resource |   | AS A PLACEHOLDER CURRENTLY, to be defined. Either this or appt-id SHALL be provided |  
| IN |  cancelled-appt-id |  0..* |  URI  |  | For signifying rescheduling of appointment (instead of just cancellation). There may be technical checks on the client or server side whether the new appointment may be seen as corresponding to previously cancelled appointment in order to define the status to "siirretty" (moved) instead of "peruttu" (cancelled). |  
| OUT |  return |  0..1 |  Bundle (base [Bundle](https://simplifier.net/simplifier.core.r4.resources/bundle) profile) |   | Bundle of type searchset of requested FinnishSchedulingAppointment resource. If the booking is accepted, the FinnishSchedulingAppointment resource will have an updated status of "booked" and the participants element updated to include the participants. If the booking is rejected, the FinnishSchedulingAppointment resource will have an updated status of "cancelled". | 

Book an appointment is always HTTP POST operation as it aims to alter the resources in question.

Using `POST` Syntax the operation can be invoked as follows:

`POST [base]/FinnishSchedulingAppointment/[id]/$book` when using appt-id as an input parameter <br>
`POST [base]/FinnishSchedulingAppointment/$book` when using appt-resource as an input parameter