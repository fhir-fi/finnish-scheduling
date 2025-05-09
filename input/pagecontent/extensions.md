The primary way to adapt the FHIR specification to specific requirements of a jurisdiction is
through [extensions](http://hl7.org/fhir/R4/extensibility.html).

### Extensions published by HL7 Finland

This list includes the extensions for scheduling related profiles defined by HL7 Finland.

<ul>
{% include list-extensions.xhtml %}
</ul>

{:.stu-note}
Many of these extensions have been defined in earlier implementation guides. The canonical URLs of
the extensions have been modified slightly, mainly to be in the `https` space, rather than `http`.
Also the names of the extensions have been changed to be more descriptive. Implementer feedback is
welcome at this stage to help evaluate whether this is a welcome change, and regarding
implementation efforts.

The earlier versions of these extensions can be found at
[FinnishAppoinment](https://simplifier.net/finnishappointment/~resources?category=Extension&sortBy=DisplayName)
and
[FinnishScheduling R4](https://simplifier.net/finnishschedulingr4/~resources?category=Extension&sortBy=DisplayName)
implementation guides.

Some of the extensions have been moved to the
[Finnish Base Profiles specification](https://hl7.fi/fhir/finnish-base-profiles/extensions.html).
These include extensions related to service event (*palvelutapahtuma*) and to visibility of
information.

### Extensions in other Finnish Implementation Guides

In addition to the extensions published by HL7 Finland, there are also other extensions used in
Finland. Most notably the ones for the national Kanta system, in several implementation guides:

* [Kanta yhteiset FHIR- ja REST-rajapintamäärittelyt](https://simplifier.net/kanta-yhteiset-fhir)
  includes definitions shared by several other Kanta implementation guides.
* [Kanta Potilastiedon arkiston FHIR R4](https://simplifier.net/kanta-potilastiedon-arkiston-fhir-r4)
  included specifications for patient data stored in Kanta.
* [Kanta FHIR Prescription R4](https://simplifier.net/PrescriptionR4) includes specifications for
  data on prescriptions
* [Kanta sosiaalihuolto R4](https://simplifier.net/Kanta-sosiaalihuolto-R4) includes specifications
  for data related to welfare and social affairs.
* [Finnish PHR R4](https://simplifier.net/FinnishPHRR4) includes specifications for health and
  wellbeing data curated by the citizens in the Finnish national Personal Health Record platform
  Kanta PHR.
* [Kanta tietojen kansalaiskäytön rajapinnat](https://simplifier.net/kanta-tietojen-kansalaiskayton-rajapinnat)  
  includes specifications for citizen-centric apps accessing data in Kanta.

### Other Extensions

In addition to above, a
[registry of standard extensions](http://hl7.org/fhir/R4/extensibility-registry.html) can
be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR
registry at [http://hl7.org/fhir/registry](http://hl7.org/fhir/registry).
