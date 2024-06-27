# Reschedule appointment

An appointment is rescheduled by updating the Appointment resource. The Slot reference and start and end times are updated to match the new appointment slot.

* Appointment slot => new slot
* Appointment start/end => new time

```
PUT [base]/Appointment/605790
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "Appointment",
  "id": "605790",
  ...
  "start": "2020-01-03T09:00:00Z",
  "end": "2020-01-03T09:30:00Z",
  "slot": [
    {
      "reference": "Slot/234567890"
    }
  ],
  ...
}
```

## Response
If the appointment is created successfully, the server responds with a `200 OK`.

The full resource can also be returned. See more: http://www.hl7.org/fhir/http.html#ops

## Implementation example
Example client call when using [HAPI FHIR](https://hapifhir.io/)
```java
    public void rescheduleAppointment(FinnishAppointmentAppointment appointment) {
        appointment.setSlot(List.of(new Reference(new IdDt(ResourceTypes.SLOT.toCode(), "12345"))));
        appointment.setStart(Date.from(Instant.parse("2020-01-03T09:00:00Z")));
        appointment.setEnd(Date.from(Instant.parse("2020-01-03T09:30:00Z")));

        String baseUrl = "http://example.com/fhir";
        FhirContext fhirContext = FhirContext.forR4();
        IGenericClient client = fhirContext.newRestfulGenericClient(baseUrl);

        client.update()
                .resource(appointment)
                .execute();
    }
```

## Error handling
The update should be rejected with a `400 Bad Request` if the resource id in the URL and JSON body do not match.

See more: http://www.hl7.org/fhir/http.html#rejecting-updates