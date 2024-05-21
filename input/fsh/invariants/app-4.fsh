Invariant: app-4
Description: "Cancel reason is mandatory, if status is \"siirretty\" or \"peruttu\""
* severity = #error
* expression = "(Appointment.status='siirretty' or Appointment.status='peruttu') implies Appointment.cancelationReason.exists()"