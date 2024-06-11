Profile: FinnishAppointmentAppointment
Parent: Appointment
Id: a5f4b52f-896d-4c6c-b8d2-8467617f60f7
Description: "Profile for appointment (ajanvaraus) in Finnish Scheduling environment. The contents is based on the scheduling appointment spefication."
* ^meta.lastUpdated = "2021-03-08T11:46:16.290+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FinnishAppointmentAppointment"
* ^status = #draft
* ^date = "2021-03-08T11:24:08.3858157+00:00"
* obeys app-4
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ParentAppointment named ParentAppointment 0..1 and
    AppointmentMutabilityExtension named AppointmentMutability 0..1 and
    NotificationInfoExtension named NotificationInfoExtension 0..* and
    ChildAppointment named ChildAppointment 0..*
* extension[ParentAppointment] ^requirements = "12 Pääajanvaraus"
* extension[AppointmentMutability] ^requirements = "95 Peruttavissa\r\n96 Siirrettävissä\r\n96.1 Peruutuksen tai siirron aikaraja"
* status from $classification-view-page.xhtml (required)
* status ^short = "suunniteltu | tilattu | varattu | peruttu | siirretty | alkanut | toteutunut | ehdotettu | saapumatta"
* cancelationReason.coding.system = "urn:oid:1.2.246.537.6.126.2008" (exactly)
* cancelationReason.coding.system ^short = "THL - Palvelutapahtuman peruuntumisen tai siirtymisen syy"
* serviceCategory ..1
* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.50.201801" (exactly)
* serviceCategory.coding.system ^short = "THL - Sosiaali- ja terveyspalvelujen luokitus"
* serviceType 1..1
* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* serviceType.coding.system ^comment = "hl7fi: koodilla ilmaistu tieto palvelusta, johon ajanvaraus kohdistuu Huom. Palvelun nimi ilmaistaan THL - Sosiaali- ja terveysalan palvelunimikkeistön avulla.\r\n\r\nThe URI may be an OID (urn:oid:...) or a UUID (urn:uuid:...).  OIDs and UUIDs SHALL be references to the HL7 OID registry. Otherwise, the URI should come from HL7's list of FHIR defined special URIs or it should reference to some definition that establishes the system clearly and unambiguously."
* serviceType.coding.system ^requirements = "71 Palvelun nimi"
* appointmentType.coding.system = "1.2.246.537.6.884.2015" (exactly)
* appointmentType.coding.system ^short = "hl7fi: asiointitapa"
* appointmentType.coding.system ^definition = "hl7fi: koodilla ilmaistu tieto ammattihenkilön ja asiakkaan välisen asioinnin tavasta"
/*
* patientInstruction.extension ^slicing.discriminator.type = #value
* patientInstruction.extension ^slicing.discriminator.path = "url"
* patientInstruction.extension ^slicing.rules = #open
* patientInstruction.extension[PatientInstructionURL] only PatientInstructionURLExtension
* patientInstruction.extension[PatientInstructionURL] ^sliceName = "PatientInstructionURL"
*/
* participant ^label = "Patient"
* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant contains patientParticipant 1..1
* participant[patientParticipant].type = $v3-ParticipationType#SBJ (exactly)
* participant[patientParticipant].actor.type = "Patient" (exactly)
* requestedPeriod ..1