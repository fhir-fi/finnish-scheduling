## Overview

Finnish appointment scheduling project profiles the following base FHIR R4 resources:

* Patient
* Appointment
* Schedule
* Slot
* Practitioner
* HealthcareService
* Location

Other base resources related to the scheduling scenarios: Organization, Practitioner Role, ServiceRequest etc.. may be used as such.

The following picture describes the possible relations between the resources. The profiles have been designed mainly for online self service appointments. These profiles can be used as a basis for both private/specialty healthcare and public healthcare systems development.


{{render:resource-links.png}}