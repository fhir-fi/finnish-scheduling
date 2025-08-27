## Case - Patient driven scheduling


### About
The scenarios described here borrow actual implementations done in Omaolo symptom check-up service and Palveluohjain scheduling service. All interactions are done with default HTTP methods, no custom operations used.

### Narrative
No specific instructions given for narrative, which is not considered as essential for scheduling purposes.

### Patient driven scheduling
Patient driven scheduling enables a patient to use an organization’s on-line service (“patient portal”) or a third-party application to search for available appointments (free slots). The result set is based on the search criteria set on:
* available times
* practitioner
* location (either as a resource reference or a string)
* specialty
* healthcare service type (based on Finnish codesystem THL - Sosiaali- ja terveysalan palvelunimikkeistö [1.2.246.537.6.49.201501])

Other interactions
* Patient books an appointment through a patient portal or a third-party application.

* Patient re-schedules or cancels an appointment through a patient portal or a third-party application.

* Patient retrieves their scheduled appointments through a patient portal or a third-party application.