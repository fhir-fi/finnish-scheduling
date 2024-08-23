### Scope and Usage

ServiceEvent extension defines Appointment related service event identifier (*palvelutapahtuman tunniste*). When the service event id is included into the Appointment resource, it SHALL be done with this extension. 

The scope of *palvelutapahtuma* is described in [base profiles](https://hl7.fi/fhir/finnish-base-profiles/StructureDefinition-fi-base-encounter.html#relation-to-finnish-palvelutapahtuma).

There are other mechanisms for communicating this information as well, like including it into the Provenance, as Kanta does, or referring to the Appointment resource from the Encounter.