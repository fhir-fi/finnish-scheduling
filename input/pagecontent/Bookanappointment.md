# Book an appointment

When booking a new appointment, the appointment resource is posted without an ID. The ID of the created Appointment is returned in response to the request.

```
POST [base]/Appointment
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "Appointment",
  "status": "booked",
  "serviceCategory": [
    {
      "coding": [
        {
          "system": "urn:oid:1.2.246.537.6.50.201801",
          "code": "SOTE19",
          "display": "Perheoikeudelliset palvelut"
        }
      ]
    }
  ],
  "serviceType": [
    {
      "coding": [
        {
          "system": "urn:oid:1.2.246.537.6.49.201501",
          "code": "NC",
          "display": "Isyyden selvittämispalvelu"
        }
      ]
    }
  ],
  "appointmentType": {
    "coding": [
      {
        "system": "urn:oid:1.2.246.537.6.884.2015",
        "code": "10",
        "display": "Kertakäynti toimipaikassa"
      }
    ]
  },
  "start": "2020-01-01T12:00:00+02:00",
  "end": "2020-01-01T12:30:00+02:00",
  "slot": [
    {
      "reference": "Slot/123456789"
    }
  ],
  "comment": "Äidillä ei ole virallista henkilöllisyystodistusta",
  "participant": [
    {
      "actor": {
        "identifier": {
          "value": "010101-123N",
          "system": "urn:oid:1.2.246.21"
        },
        "display": "Pentti Potilas"
      },
      "status": "accepted",
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
    {
      "actor": {
        "identifier": {
          "value": "1.2.246.10.10303777.10.777"
        },
        "display": "Vastaanotto"
      },
      "status": "accepted",
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "LOC",
              "display": "location"
            }
          ]
        }
      ]
    },
    {
      "actor": {
        "reference": "HealthcareService/234567890",
        "display": "Lastenvalvojan vastaanotto"
      },
      "status": "accepted"
    }
  ],
  "extension": [
    {
      "url": "http://hl7.fi/fhir/StructureDefinition/NotificationInfoExtension",
      "valueContactPoint": {
        "system": "sms",
        "value": "+3581234567"
      }
    }
  ]
}
```

## Response
If the appointment is created successfully, the server responds with a `201 Created` and a Location header with the id of the appointment, e.g. `Location: [base]/Appointment/605790`.

The full resource can also be returned. See more: http://www.hl7.org/fhir/http.html#ops

## Implementation example
Example client call when using [HAPI FHIR](https://hapifhir.io/)
```java
    public void bookAppointment() {
        Appointment appointment = new Appointment();
        appointment.addSlot(new Reference(new IdDt(ResourceTypes.SLOT.toCode(), "123456789")));
        appointment.setStart(Date.from(Instant.parse("2020-01-01T12:00:00+02:00")));
        appointment.setEnd(Date.from(Instant.parse("2020-01-01T12:30:00+02:00")));
        appointment.setStatus(Appointment.AppointmentStatus.BOOKED);
        // fill in rest of contents

        String baseUrl = "http://example.com/fhir";
        FhirContext fhirContext = FhirContext.forR4();
        IGenericClient client = fhirContext.newRestfulGenericClient(baseUrl);

        client
                .create()
                .resource(appointment)
                .execute();
    }
```

## Error handling
The create should be rejected with a `400 Bad Request` if the resource cannot be created (syntax error etc.) or with a `422 Unprocessable Entity` if the resource will not be created (business logic reasons).

See more: http://www.hl7.org/fhir/http.html#create