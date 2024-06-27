### HL7fiSched_REQ4: Cancel appointment

An appointment can be cancelled by providing an appointment id for an appointment with suitable status (booked) already created and stored on the server.



Parameters

|  **Use**  |  **Name**  |  **Cardinality**  |  **Type**  |  **Binding**  |  **Documentation** | 
| --- | --- | --- | --- | --- | --- | 
| IN |  appt-id |  0..1 |  URI |   | A resource id for one of proposed Appointments returned by a prior Query for free appointments operation. Either this or appt-resource SHALL be provided  |
| OUT |  return |  0..1 |  Bundle (base [Bundle](https://simplifier.net/simplifier.core.r4.resources/bundle) profile) |   | Bundle of type searchset of requested FinnishSchedulingAppointment resource. If the booking is cancelled successfully, the FinnishSchedulingAppointment resource will have an updated status of "cancelled" and the participants element updated to include the participants. If the booking cancellation is rejected, the FinnishSchedulingAppointment resource will keep its original status and the return message will inform that the cancellation was not successful. | 

Cancellation is always a HTTP POST operation as it aims to alter the resources in question.

Using `POST` Syntax the operation can be invoked as follows:

`POST [base]/FinnishSchedulingAppointment/[id]/$cancel` when using appt-id as an input parameter
