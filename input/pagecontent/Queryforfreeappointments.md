### HL7fiSched_REQ1: Query for free appointments

This operation documentation is for a large part based on the one defined in [US Argonaut Scheduling implementation guide](http://www.fhir.org/guides/argonaut/scheduling/index.html). 

The operation searches for availability for a future appointment(s) within a time period defined by dateTime range input parameters. The search criteria include also practitioner, healthcare service, location and specialty. The appointments returned will be returned with 'proposed' status and will be deducted by examining the schedules (in other words the free time slots) of the relevant resources. From the search criteria, a system determines which schedulable resources are needed for the visit, and provides time slots where all required resources are available. Setting the appointments to 'pending' status would result from starting the reservation process for one specific appointment _if supported_.

Parameters

|  **Use**  |  **Name**  |  **Cardinality**  |  **Type**  |  **Binding**  |  **Documentation** | 
| --- | --- | --- | --- | --- | --- | 
| IN |  start |  1..1 |  dateTime |   | The period of time that should be checked for appointment availability.- e.g., look for all available appointments in a certain date range. If no start date is provided, then the start date will be set to the current time. |
| IN |  end |  1..1 |  dateTime |   | The period of time that should be checked for appointment availability.- e.g., look for all available appointments in a certain date range. If no end date is provided, the end date will be set to the planning horizon for the relevant Schedule resources will be used (or a case specific preset maximum end date). |  
| IN |  specialty |  0..* |  string ([token](http://hl7.org/fhir/STU3/search.html#token)) | urn:oid:1.2.246.537.6.24.2003 | The code for which specialty is requested for the appointment. ( e.g., `specialty=[1.2.246.537.6.24.2003]|10` meaning "Sisätaudit"). The response will contain appointments with any of given specialties. |  
| IN |  service-type |  0..* | string ([token](http://hl7.org/fhir/STU3/search.html#token)) |  urn:oid:1.2.246.537.6.49.201501 | The code for one of the service  types for scheduling. (e.g., `service-type=[1.2.246.537.6.49.201501]|[SOTE14.1]` meaning "Äitiysneuvola"). The response will contain appointments with any of given specialties. |  
| IN |  practitioner |  0..1 |  uri |   | The Practitioner reference when performing a provider based query. This is a reference to a FHIR FinnishPractitioner resource, e.g. `FinnishPractitioner/123`.  |  
| IN |  organization |  0..* |  uri |   | The Organization reference when performing a provider based query. This is a reference to a FHIR Organization resource, e.g. `Organization/abc`. |  
| IN |  organization-code |  0..* |  string ([token](http://hl7.org/fhir/STU3/search.html#token)) |   | An organization code from SOTE-organisaatiorekisteri. (e.g., `organization-code=[1.2.246.537.6.202.2008]|[1.2.246.10.1746664.10.0.14018]` meaning "Keljon suun terveydenhuolto JYTE, Jyväskylän perusturva") |
| IN |  location-string |  0..* |  string |   | A (part of the) address of the location of interest. (e.g., zip codes, city or state). Covers the `string` type elements in the address of the location.  |  
| IN |  location-reference |  0..* |  uri |   | A Location reference when performing an operation where the Location resource `id` is known. |
| OUT |  return |  0..1 |  Bundle (base [Bundle](https://simplifier.net/simplifier.core.r4.resources/bundle) profile) |   | Bundle of type `searchset` with entries of proposed [FinnishSchedulingAppointment](https://simplifier.net/finnishschedulingr4/finnishschedulingappointment) resources. An empty bundle means no available appointments based on inputs. | 

* For input parameters that are actually codes, the simple FHIR token search parameter type is used instead of the complex `Coding` datatype. Also, the simple `uri` datatype is used instead of the complex `Reference` datatype for resources references. This allows either the 'GET' or the 'POST' syntax to be used to initiate the interaction in many cases. 
* If more than one resource type group (specialty/service-type, practitioner, organization/organization-code, location-string/location-reference) is present, the response SHOULD contain appointments with at least one match in _all_ of these actor groups (i.e, this is a logical 'AND'). If an actor type of one group is repeated the response SHOULD contain appointments with _any_ of these actors and SHOULD be interpreted as the order of preference (i.e. this is a logical 'OR'). Ultimately the server is responsible for determining the first/best available appointment options to return.
* References can be to an absolute URL, but servers only perform operations on their own resources.
* To set the upper limit on the total number of available appointment options to return use the standard  [ `_count` ][20] search parameter. See

Using Both `GET` and `POST` Syntax the operation can be invoked as follows:

`GET [base]/FinnishSchedulingAppointment/$find?{parameters}&?{_count}` <br>
`POST [base]/FinnishSchedulingAppointment/$find?{_count}`


