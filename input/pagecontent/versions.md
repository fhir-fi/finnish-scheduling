### History
This implementation guide is based on two previously published guides.

* [FinnishScheduling R4](https://simplifier.net/finnishschedulingr4/), published in 2020, presented
  the Finnish logical model for appointments in FHIR.
* [FinnishAppointment](https://simplifier.net/finnishappointment), published in 2021, concentrated
  more on actual interactions performed by systems when booking and managing appointments.

Both of those guides were published in Simplifier. When starting to work on the
[Finnish FHIR Base Profiles](https://hl7.fi/fhir/finnish-base-profiles/) in 2022, HL7 Finland moved
to a different workflow for implementation guides, utilizing [GitHub](https://github.com/fhir-fi),
[FHIR Shorthand](https://www.hl7.org/fhir/uv/shorthand/), and the
[build.fhir.org](https://build.fhir.org/ig/) infrastructure.

After the initial work on [Finnish FHIR Base Profiles](https://hl7.fi/fhir/finnish-base-profiles/)
and [Finnish Implementation Guide for SMART App Launch](https://hl7.fi/fhir/finnish-smart/) the
community decided to update the scheduling related implementation guides. The logical model for
appointments had evolved, and new insights on implementability had beed gathered from
implementation efforts. New requirements were also presented.

This implementation guide is the result of that activity. It was considered best to consolidate the
information in a single implementation guide.

The old implementation guides in Simplifier may still be a useful reference. 

### Notable Changes
Notable changes from the previous implementation guides include
* The Appointment state has been reworked. The old specification was not compatible with the base
  FHIR specification. This implementation guide includes a mapping table showing how the state of
  the Appointment resource type in FHIR maps to the Finnish logical model.
* The scope of extensions have been checked and largely relaxed to allow use of the extensions more
  widely.
* **The canonical urls of profiles and extensions have been changed!** The urls now point to this
  implementation guide and resolve.

### This Implementation Guide

Version 2.0.0 is the first official release of this consolidated implementation guide. See the
history of published versions in the
[publication directory](https://hl7.fi/fhir/finnish-scheduling/history.html).

You can track the changes between released snapshot versions through the
Previous Version Comparison section of the [QA report](qa.html). You can also check changes
between ballot and release versions through the
[releases](https://github.com/fhir-fi/finnish-scheduling/releases) in GitHub.

The development continues, with the intention to get definitions from this implementation guide
into Normative level (see the
[standards development process](https://hl7.org/fhir/versions.html#std-process) of the FHIR
specification), and to extend the coverage of resources.

Development snapshots will be published throughout the development, ballot, and maintenance cycles.

### CI Build Snapshots
The latest version of the `master` branch of the source code repository for this implementation
guide is published at
[https://fhir.fi/finnish-scheduling/](https://fhir.fi/finnish-scheduling/).

In addition, the `master` branch and each development branch are built and published automatically
with the build.fhir.org infrastructure. You can locate the built snapshot with
the branch name. For instance, the latest commit to the `master` branch is published at
[https://build.fhir.org/ig/fhir-fi/finnish-scheduling/branches/master](https://build.fhir.org/ig/fhir-fi/finnish-scheduling/branches/master).
Or select from the
[list of branches](https://build.fhir.org/ig/fhir-fi/finnish-scheduling/branches/).

You can also browse the
[list of all IG builds](https://fhir.github.io/auto-ig-builder/builds.html).

Similarly the debug info related to the build can be found with the branch name. The build log of
the latest commit to the `master` branch is at
[https://build.fhir.org/ig/fhir-fi/finnish-scheduling/branches/master/build.log](https://build.fhir.org/ig/fhir-fi/finnish-scheduling/branches/master/build.log).

You can also track the build info at the
[committers/notification](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build/)
channel on the [chat.fhir.org](https://chat.fhir.org) Zulip forum.
