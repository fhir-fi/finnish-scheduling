# Cancel an appointment

## Citizen cancels

An appointment is cancelled by updating the Appointment resource. The appointment and patient participant statuses are changed.

* Appointment status => cancelled
* Patient actor status => declined

```
PUT [base]/Appointment/605790
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "Appointment",
  "id": "605790",
  "status": "cancelled",
  ...
  "participant": [
    {
      "actor": {
        "identifier": {
          "value": "010101-123N",
          "system": "urn:oid:1.2.246.21"
        },
        "display": "Pentti Potilas"
      },
      "status": "declined",
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "SBJ",
              "display": "subject"
            }
          ]
        }
      ]      
    },
    ...
  ]
}
```

## Response
If the appointment is created successfully, the server responds with a `200 OK`.

The full resource can also be returned. See more: http://www.hl7.org/fhir/http.html#ops

## Implementation example
Example client call when using [HAPI FHIR](https://hapifhir.io/)
```java
    public void cancelAppointment(FinnishAppointmentAppointment appointment) {
        appointment.setStatus(Appointment.AppointmentStatus.CANCELLED);
        appointment.getParticipant()
                .stream()
                .filter(p -> p.getActor().getType().equals(ResourceTypes.PATIENT.toCode()))
                .findFirst()
                .ifPresent(p -> p.setStatus(Appointment.ParticipationStatus.DECLINED));

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
