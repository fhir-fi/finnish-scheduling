# Read appointment

It is recommended to support read operation for appointments, because then a single appointment can be fetched as basis for rescheduling or cancelling, for example if the system performing such operation does not store appointent resource documents.

It might be useful also if an appointment needs to be transferred to a third party system.

```
GET [base]/Appointment/605790
```

## Example response
```json
{
  "resourceType": "Appointment",
  "id": "605790",
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
  "created": "2019-12-01",
  "comment": "Äidillä ei ole virallista henkilöllisyystodistusta",
  "patientInstruction": "Vanhemmilla tulee olla mukana voimassa olevat henkilöllisyystodistukset sekä äidillä neuvolan äitiyskortti (todistus raskaudesta). Käynnin yhteydessä tehdään oikeusgeneettinen DNA-tutkimus. Ennen näytteen ottamista täyttyy olla syömättä, juomatta ja tupakoimatta vähintään 30 minuuttia",
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
    },
    {
      "url": "http://hl7.fi/fhir/StructureDefinition/AppointmentMutabilityExtension",
      "extension": [
        {
          "url": "Cancellable",
          "valueBoolean": true
        },
        {
          "url": "Reschedulable",
          "valueBoolean": false
        }
      ]
    }
  ]
}
```


## Implementation example
Example client call when using [HAPI FHIR](https://hapifhir.io/)
```java
    public void readAppointment() {
        String baseUrl = "http://example.com/fhir";
        FhirContext fhirContext = FhirContext.forR4();
        IGenericClient client = fhirContext.newRestfulGenericClient(baseUrl);

        client.read()
                .resource(Appointment.class)
                .withId("12345")
                .execute();

        // handle the result
    }
```

## Error handling
> Note: Unknown resources and deleted resources are treated differently on a read: a GET for a deleted resource returns a 410 status code, whereas a GET for an unknown resource returns 404. Systems that do not track deleted records will treat deleted records as an unknown resource.

See more: http://www.hl7.org/fhir/http.html#read