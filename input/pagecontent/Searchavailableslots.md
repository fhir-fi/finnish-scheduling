# Search available slots

## Searches
### Search slots for timerange
```
GET [base]/Slot?start=ge2020-01-01&start=le2020-01-07&status=free
```

### Search slots for timerange and schedule
```
GET [base]/Slot?start=ge2020-01-01&start=le2020-01-07&status=free&schedule=1234
```

### Search slots for timerange and healthservice
Search by healthcare service referenced by slot's schedule
```
GET [base]/Slot?start=ge2020-01-01&start=le2020-01-07&status=free&schedule.actor:HealthcareService.identifier=12345
```

## Example response
```json
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 100,
  "link": [
    {
      "relation": "self",
      "url": "[base]/Slot?start=ge2020-01-01&start=le2020-01-07&status=free"
    }
  ],
  "entry": [
    {
      "resource": {
        "resourceType": "Slot",
        "identifier": {
          "value": "123456789"
        },
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
        "schedule": {
          "reference": "Schedule/234567890"
        },
        "status": "free",
        "start": "2020-01-01T12:00:00+02:00",
        "end": "2020-01-01T12:30:00+02:00"
      },
      "search": {
        "mode": "match"
      }
    },
    ...
  ]
}
```

## Service discovery
Schedules or healthcare services must be known beforehand, in order to search for slots. It is highly recommended practice to make available HealthCareServices searchable by service type to avoid unnecessary administration needed to manually sync the service offering between client and server.

## Implementation notes
Resource handling systems may have additional restrictions for searching available slots (for example about valid date-range, time format etc.) These restrictions should be left in the server side if possible, so preferably way would be to additionally restrict the search rather than raising an exception to the client

## Implementation examples
Example client calls when using [HAPI FHIR](https://hapifhir.io/)

```java
    public void searchSlotsForSchedule() {
        String baseUrl = "http://example.com/fhir";
        FhirContext fhirContext = FhirContext.forR4();
        IGenericClient client = fhirContext.newRestfulGenericClient(baseUrl);

        client.search()
                .forResource(FinnishAppointmentSlot.class)
                .where(Slot.SCHEDULE.hasId("12345"))
                .and(Slot.START.afterOrEquals().day("2020-01-01"))
                .and(Slot.START.beforeOrEquals().day("2020-01-07"))
                .and(Slot.STATUS.exactly().code(Slot.SlotStatus.FREE.toCode()))
                .returnBundle(Bundle.class)
                .execute();

        // handle the results
    }
```

```java
    public void searchSlotsForHealthcareService() {
        String baseUrl = "http://example.com/fhir";
        FhirContext fhirContext = FhirContext.forR4();
        IGenericClient client = fhirContext.newRestfulGenericClient(baseUrl);

        client.search()
                .forResource(FinnishAppointmentSlot.class)
                .where(Slot.SCHEDULE.hasChainedProperty(
                        Schedule.ACTOR.hasChainedProperty(
                                "HealthcareService",
                                HealthcareService.IDENTIFIER.exactly().identifier("12345"))))
                .and(Slot.START.afterOrEquals().day("2020-01-01"))
                .and(Slot.START.beforeOrEquals().day("2020-01-07"))
                .and(Slot.STATUS.exactly().code(Slot.SlotStatus.FREE.toCode()))
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