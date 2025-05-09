### Finnish FHIR Scheduling

This is the Finnish HL7® FHIR® implementation guide for Scheduling.

{% include cross-version-analysis-inline.xhtml %} There is no plan yet to base this implementation
guide on [FHIR R5](https://hl7.org/fhir/R5/).

{% include dependency-table-short.xhtml %}

The guide is based on two earlier implementation guides.
* [FinnishScheduling R4](https://simplifier.net/finnishschedulingr4/), published in 2020, presented
  the Finnish logical model for appointments in FHIR.
* [FinnishAppointment](https://simplifier.net/finnishappointment), published in 2021, concentrated
  more on actual interactions performed by systems when booking and managing appointments.

The [history page](versions.html) offers more historical context.

See also [all FHIR implementation guides published by HL7 Finland](https://hl7.fi/fhir/).

### Two Modes for Scheduling

There are essentially two modes for scheduling in healthcare. See the section
[workflow types](https://hl7.org/fhir/r5/appointment.html#workflow-types) of the FHIR Appointment
resource.

[Argonaut](https://fhir.org/guides/argonaut/scheduling/) and
[IHE](https://github.com/IHE/ITI.Scheduling/) seem to head more into the "Hospital Scheduling" mode
with operations rather than direct REST calls.

In Finland the first one, the "Outlook Style", has been adopted more widely.

### Scope of this Implementation Guide

This implementation guide is not an API specification. Rather, it is a continuation of the
profiling efforts of HL7 Finland. The aims are
* to adapt the international FHIR specification to requirements specific to Finnish ecosystem
* to avoid divergence of systems and to lower cost of implementations by harmonizing what is common
  between Finnish implementations
* to educate all parties in the local ecosystem of existing implementations and design choices
  taken when implementing them.

Products and platforms like the ones listed below are expected to publish their own API
specifications.

### Notable Implementations in Finland

#### Apotti

[Apotti](https://www.apotti.fi/en/), an [Epic](https://www.epic.com/) installation in Finland has
Epic's existing FHIR APIs for scheduling.

#### CGI

The [OMNI360](https://www.cgi.com/fi/fi/tuoteratkaisut/omni360) by CGI Finland is one of the
prominent Finnish electronic health record systems and has several native FHIR APIs. It offers a
native FHIR API for scheduling.

CGI also offers scheduling services (*Palveluohjain*, previously also known as *AVPH*) as part of
a separate platform,
[*Sähköinen asiointipalvelu*](https://www.cgi.com/fi/fi/tuoteratkaisut/sahkoinen-asiointialusta).

#### EskoSystems

The [Esko APTJ](https://eskosystems.fi/tuoteperhe/integraatiot/) by Esko Systems is also one of the
prominent Finnish electronic health record systems. It uses several FHIR APIs internally and to
communicate with third party systems and components.

#### Kanta

[Kanta](https://www.kanta.fi/) is the Finnish national central registry of health and social
welfare information, with many services available for systems, providers, and citizens. Most of
both the data and the APIs in Kanta system are based on HL7 V3 standards. However, there is
ongoing work to open also FHIR based access to the information.

Kanta has specific FHIR APIs for storing and managing appointment documents into the Kanta
registry. These documents contain information that can be viewed by the patient through the
OmaKanta portal. The information in the central registry can be used by all providers to avoid
overlapping bookings and to ensure fluent care paths for patients.

#### Omaolo

[Omaolo](https://www.omaolo.fi) is a collection of services developed by DigiFinland, a publicly
funded company. Omaolo has a fully HL7 FHIR based personal health record platform as its core. It
also uses FHIR scheduling to communicate with electronic health record systems and other third
party implementations.

### Other Guides and Links

Finnish national specifications for scheduling are in
[Sote-ajanvaraus - yleiskuvaus ja terveydenhuollon ajanvarausratkaisujen kansalliset vaatimukset](https://yhteistyotilat.fi/wiki08/display/THLAJANJULK).

Kanta specifications are in
[Kanta Potilastiedon arkiston FHIR R4](https://simplifier.net/kanta-potilastiedon-arkiston-fhir-r4).

See also the links to concept definitions on the
[terminology](terminology.html#other-terminologies) page.

Other scheduling related links and FHIR implementation guides include
* [FHIR Appointment Scheduling Workflows](https://www.hl7.org/fhir/appointment.html#workflow-types)
* [Argonaut Scheduling](https://fhir.org/guides/argonaut/scheduling/)
* [Scheduling Building Blocks](https://confluence.hl7.org/display/AP/Scheduling+Building+Blocks)
* [SMART Scheduling Links](https://github.com/smart-on-fhir/smart-scheduling-links)

### Must-Support Rules

This version of this implementation guide does not define any
[Must Support](https://build.fhir.org/profiling.html#obligations) rules.

### Governance

The profiling work is performed in a project driven by [HL7 Finland](https://www.hl7.fi).

[Source code](https://github.com/fhir-fi/finnish-scheduling),
[issues](https://github.com/fhir-fi/finnish-scheduling/issues), and
[meeting notes](https://github.com/fhir-fi/finnish-scheduling/wiki/Meeting-memos) can be found in
GitHub.

We warmly welcome new participants to the project. You
may even be compensated for your efforts.

The team involved in creating the first version of the specification includes
* Arto Huusko, CGI Oyj
* Janne Heikkinen, FlowUp Oy
* Jari Vuonos, Apotti Oy
* Joni Hirviniemi, Fujitsu
* Jyrki Soikkeli, Apotti Oy
* Markus Lind, Buddy Healthcare Oy
* Markus Suonpää, CGI Finland Oyj
* Mika Jylhä, Esko Systems Oy
* Mika Lentovaara, HUS
* Mika Tuomainen, Kela
* Mikael Rinnetmäki, Sensotrend Oy
* Tero Pekkola, Esko Systems Oy

Each published major version of this implementation guide goes through the ballot and voting
processes of HL7 Finland, and then represents the consensus view of the Finnish FHIR community.

### Collaboration

We want this implementation guide to be useful for you.

If you are implementing scheduling related functionalities with FHIR in a system or application
that is meant to be used in Finland and are thinking of some implementation details, you are
probably in the right place and this implementation guide should help you with those questions. If
this implementation guide in any way fails to give you the answers you are looking for, we'd love
to hear about it so we can make it better. Please do be in touch in one of the ways listed below.

#### Open an Issue in GitHub

The source code of this implementation guide is maintained in a
[publicly accessible repository](https://github.com/fhir-fi/finnish-scheduling) in GitHub.
Issues opened in that GitHub repo are very welcome. They help the team pick up any proposed changes
or additions and to discuss them publicly.

#### Open a Pull Request in GitHub

Pull requests are even better. If you are in a position to suggest how exactly your proposal should
be implemented in the specification, do it! It helps the team maintaining the implementation guide
a great deal.

#### Participate in IG Development and Maintenance

Please also consider joining the development effort. This is the best way to affect the outcome of
the profiling work. You may even be compensated for your efforts. Please be in touch with HL7
Finland to discuss options, if this even remotely interesting for you.

The best implementation guide is the one that reflects the views and the consensus of the whole
FHIR community!

### Safety Considerations
This implementation guide defines data elements, resources, formats, and methods for exchanging
healthcare data between different participants in the healthcare process. As such, clinical safety
is a key concern. Additional guidance regarding safety for the specification’s many and various
implementations is available at
[https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification does give users the opportunity to observe data protection and
data security regulations, its use does not guarantee compliance with these regulations. Effective
compliance must be ensured by appropriate measures during implementation projects and in daily
operations. The corresponding implementation measures are explained in the standard. In addition,
the present specification can only influence compliance with the security regulations in the
technical area of standardisation. It cannot influence organisational and contractual matters.

### License and Legal Terms 

This document is licensed under Creative Commons
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) Public Domain Dedication.

This implementation guide contains and references intellectual property owned by third parties
("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to
Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary
licenses or authorizations to utilize Third Party IP in connection with the specification or
otherwise.

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png"
style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned
by Health Level Seven International, registered with the United States Patent and Trademark Office.

See also [http://hl7.org/fhir/license.html](http://hl7.org/fhir/license.html).

#### Other Intellectual Property Statements

{% include ip-statements.xhtml %}
