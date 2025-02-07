The Finnish logical model for appointments includes a code set for appointment statuses that
differs from the FHIR
[Appointment.status](https://hl7.org/fhir/R4B/appointment-definitions.html#Appointment.status)
values.

The Finnish logical model is more detailed when the service is being planned, and separates between
states where the need fo a service has been identified but no service provider has yet been
identified
([#1, Suunniteltu](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027618)),
and when the service provider has been selected
([#2, Tilattu](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027619)).

The FHIR specification uses the Appoinment resource to track information on scheduling and for
administrative purposes, and in general for prepapring for the encounter. In FHIR, the Encounter
resource is used to track the encounter, and any clinically relevant information (see
[Appointment Statuses and Encounters](https://hl7.org/fhir/R4B/appointment.html#statuses)). In
FHIR, when an encounter starts, its state is tracked with the
[Encounter](https://hl7.org/fhir/R4B/encounter.html) resource, and no longer with the
[Appointment](https://hl7.org/fhir/R4B/appointment.html). The Finnish logical model does not make
such a distinction between the appointment and the encounter.

The Finnish logical model does not have a separate state for when the patient has arrived (FHIR
status
[arrived](https://hl7.org/fhir/R4/codesystem-appointmentstatus.html#appointmentstatus-arrived)).
It does have a code
[#10, Ilmoittautunut](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=200188374)
that matches the FHIR code
[checked-in](https://hl7.org/fhir/R4/codesystem-appointmentstatus.html#appointmentstatus-checked-in).

On the other hand, the Finnish logical model separates between when an encounter has started
([#6, Alkanut](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027623))
and when the service is in progress or completed
([#7, Toteutunut](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027624)).

The mapping provided here does not fully respect FHIR semantics. 
`Alkanut` actually means that the encounter has already started. The code is mapped here to get a closer one-to-one relationship between the code systems.

The Finnish logical model used to have a separate code for an appointment that has been rescheduled
([#5, Siirretty](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027622)),
but that code is now deprecated.

The Finnish logical model does not have any code for appointments that have been entered in error.
