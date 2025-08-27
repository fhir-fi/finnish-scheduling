## Overview

[Finnish Scheduling project](https://simplifier.net/finnishschedulingr4) profiles the following base FHIR R4 resources:

Finnish*
- Patient
- Appointment
- Schedule
- Slot
- Practitioner
- PractitionerRole
- HealthcareService
- Location

Other base resources related to the scheduling scenarios: organization, device etc.. may be used as such.

The following picture describes the relations between the resources. The profiles have been designed with primary care appointments. Both specialty/specialist (private) and services need assessment (public primary care) driven scheduling system may be developed upon the profiles. For public specialist care setting there generally is a need for more resource classes for more complex resource planning.   

This implementation guide borrows some ideas from other similar projects, especially [US Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/index.html). It is highly recommended to use Argonaut project implementation guide in the development of the actual scheduling services. 

{{render:FinnishSchedulingR4/sched1}}
