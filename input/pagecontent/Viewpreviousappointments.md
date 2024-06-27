### HL7fiSched_REQ3: View previous appointments 

The operation searches for the appointments for patient or practitioner in question within a time period defined by dateTime range input parameters. The appointments returned will be only of status "booked" unless others are specified as well. NOTE! Might be integrated to "Query for free appointments" by including the status code?

Parameters

|  **Use**  |  **Name**  |  **Cardinality**  |  **Type**  |  **Binding**  |  **Documentation** | 
| --- | --- | --- | --- | --- | --- | 
| IN |  patient-reference |  0..1 |  uri |   | A Patient reference when performing an operation, e.g. whose appointments are we searching for. |
| IN |  practitioner-reference |  0..* |  uri |   | A Practitioner reference when performing an operation, e.g. whose appointments are we searching for. (e.g. `FinnishPractitioner/123`) |  
| IN |  patient-id |  0..1 |  uri |   | A Patient reference when performing an operation where the Patient resource `id` is known. Patient resources include demographics and patient preferences that may be important for availaiblilty searches. If multiple patient references are listed, the response will contain appointments which is joint match for all patients - i.e., a group appointment. |  
| IN |  status-code |  0..* | string ([token](http://hl7.org/fhir/STU3/search.html#token)) |  http://hl7.org/fhir/r4/valueset-appointmentstatus.html | The allowable statuses of appointments to be returned. |  
| IN |  start |  0..1 |  dateTime |   | The period of time that should be checked for appointments.- e.g., look for all appointments in a certain date range. If no start date is provided, then the start date will be set to the current time. |
| IN |  end |  0..1 |  dateTime |   | The period of time that should be checked for appointment.- e.g., look for all  appointments in a certain date range. If no end date is provided, the end date will be set to the planning horizon for the relevant Schedule resources will be used (or a case specific preset maximum end date). |  
| OUT |  return |  0..1 |  Bundle (base [Bundle](https://simplifier.net/simplifier.core.r4.resources/bundle) profile) |   | Bundle of type `searchset` with entries of proposed [FinnishSchedulingAppointment](https://simplifier.net/finnishschedulingr4/finnishschedulingappointment) resources. An empty bundle means no available appointments based on inputs. | 

Using Both `GET` and `POST` Syntax the operation can be invoked as follows:

`GET [base]/FinnishSchedulingAppointment/$find_booked?{parameters}&?{_count}` <br>
`POST [base]/FinnishSchedulingAppointment/$find_booked?{_count}`

