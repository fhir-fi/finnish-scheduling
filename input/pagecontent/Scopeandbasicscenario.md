## Scope and basic scenario

### About 

The scenarios described here borrow from Argonaut Scheduling Project implementation guide (http://www.fhir.org/guides/argonaut/scheduling/index.html)

### Narrative

No specific instructions given for narrative, which is not considered as essential for scheduling purposes.

### Patient driven scheduling

1. Patient based scheduling enables a patient to use an organization’s on-line service (“patient portal”) or a third-party application to search for available appointments (free slots). The result set is based on the search criteria set on:
- available times
- practitioner
- location (either as a resource reference or a string)
- specialty 
- healthcare service type (based on Finnish codesystem THL - Sosiaali- ja terveysalan palvelunimikkeistö [1.2.246.537.6.49.201501])
2. Patient books an appointment through a patient portal or a third-party application.

3. Patient cancels an appointment through a patient portal or a third-party application.

4. Patient retrieves their scheduled appointments through a patient portal or a third-party application.
