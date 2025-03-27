## To-be-developed

### Functionalities

This Implementation guide covers only patient driven scheduling. Organization driven scheduling is a more complex scenario in most cases and is not addressed here specifically. 

### Resource contents

**Appointment/status:** If appointment has been moved to another date and time, there is no separate status for this. The internal codeset for status is not extensible (binding: required). This might be important information for care guarantee tracking depending on the business rules expected. Finnish national code system is Ajanvaraus - Ajanvarauksen tila(1.2.246.537.6.881.201501)

### Operations

- Move appointment 
    - or just cancel and reserve? but these have different repercussions eg. in terms of care guarantee tracking. Now Book an appointment includes cancelled-appt-id, maybe it is enough to be able to perform this in the interface? So just a parametrization of Book an appointment
- Request free slots for appointment
- Request a lock for appointment
    - so that information can be entered without someone making a reservation for the same slot
    
#### Operations subtopics

- Make an appointment booking usage scenario 2
- Provide examples for the operations

