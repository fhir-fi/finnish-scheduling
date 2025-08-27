# Search scheduled appointments

## Search booked Appointments of patient

Use of POST instead of GET is strongly recommended. When using GET, personal identity code or other sensitive information can be logged in proxy and http access logs etc.

```
POST [base]/Appointment/_search
Content-Type: application/x-www-form-urlencoded

patient.identifier=urn:oid:1.2.246.21|010101-123N&status=booked
```
Which is equivalent to
```
GET [base]/Appointment?patient.identifier=urn:oid:1.2.246.21|010101-123N&status=booked
```

## Example response
```json
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 15,
  "link": [
    {
      "relation": "self",
      "url": "[base]/Appointment?patient.identifier=urn:oid:1.2.246.21|010101-123N&status=booked"
    }
  ],
  "entry": [
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
  ]
}
```

## Implementation example
Example client call when using [HAPI FHIR](https://hapifhir.io/)
```java
    public void searchAppointments() {
        String baseUrl = "http://example.com/fhir";
        FhirContext fhirContext = FhirContext.forR4();
        IGenericClient client = fhirContext.newRestfulGenericClient(baseUrl);

        client.search()
                .forResource(FinnishAppointmentAppointment.class)
                .where(Appointment.PATIENT.hasChainedProperty(
                        Patient.IDENTIFIER.exactly().systemAndCode("urn:oid:1.2.246.21", "010101-123N")))
                .and(Appointment.STATUS.exactly().code(Appointment.AppointmentStatus.BOOKED.toCode()))
                .usingStyle(SearchStyleEnum.POST)
                .returnBundle(Bundle.class)
                .execute();
        
        // handle the results
    }
```

## Error handling
No search result is not an error condition! Only return errors if the search cannot be performed.

Also:
> In general, servers SHOULD ignore unknown or unsupported parameters

See more about search error handling: http://www.hl7.org/fhir/search.html#errors