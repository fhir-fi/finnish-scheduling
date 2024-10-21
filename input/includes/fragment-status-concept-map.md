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

The FHIR specification uses the Appointment resource to track information on scheduling and for
administrative purposes, and the Encounter resource to track any clinically relevant information
(see [Appointment Statuses and Encounters](https://hl7.org/fhir/R4B/appointment.html#statuses)). In
FHIR, when an encounter starts, its state is tracked with the
[Encounter](https://hl7.org/fhir/R4B/encounter.html) resource, and no longer with the
[Appointment](https://hl7.org/fhir/R4B/appointment.html).

The Finnish logical model does not make such a distinction. The same value set records states for
when the encounter has started
([#6, Alkanut](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027623))
and when the service is in progress or completed
([#7, Toteutunut](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027624)).

The Finnish logical model does not have a separate state for when the patient has arrived (FHIR
status
[`#arrived`](https://hl7.org/fhir/R4/codesystem-appointmentstatus.html#appointmentstatus-arrived)).
It does have a code
[#10 Ilmoittautunut](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=200188374)
that matches the FHIR code
[`#checked-in`](https://hl7.org/fhir/R4/codesystem-appointmentstatus.html#appointmentstatus-checked-in).

The Finnish logical model used to have a separate code for an appointment that has been rescheduled
([#5, Siirretty](https://koodistopalvelu.kanta.fi/codeserver/pages/code-view-page.xhtml?conceptCodeKey=101027622)),
but that code is now deprecated.

The Finnish logical model does not have any code for appointments that have been entered in error.

<style>
  table.grid {
    table-layout: fixed;
    width: 100%;
  }
  table.grid td {
    width: 20%;
  }
  table.grid td:nth-child(2) {
    width: 10%;
  }
  table.grid td:nth-child(4) {
    width: 50%;
  }
  table.grid tr:first-child td:last-child {
    display: none;
  }
</style>