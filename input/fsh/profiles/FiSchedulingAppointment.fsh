Profile: FiSchedulingAppointment
Parent: Appointment
Id: fi-scheduling-appointment
Description: "Base profile for appointment (*ajanvaraus*) in Finnish Scheduling environment. The contents is based on the scheduling appointment specification."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ServiceEventExtension named ServiceEvent 0..1 and
    TopicIdExtension named TopicId 0..1 and
    QueueNoExtension named QueueNo 0..* and
    TicketNoExtension named TicketNo 0..* and
    VisibleToCustodianExtension named VisibleToCustodian 0..1 and
    CustomerJourneyExtension named CustomerJourney 0..* and
    ParentAppointment named ParentAppointment 0..1 and
    SelfServiceExtension named SelfServiceExtension 0..1 and
    ResourceCalendarIdExtension named ResourceCalendar 0..* and
    ReferralIdExtension named ReferralId 0..* and
    RequestedServiceExtension named RequestedService 0..1 and
    MiscAppointmentDataExtension named MiscAppointmentData 0..1 and
    PractitionerGenderExtension named PractitionerGender 0..1 and
    NotificationMediumExtension named NotificationMedium 0..* and
    CareGuaranteeExtension named CareGuarantee 0..1 and
    AdditionalInformationURLExtension named AdditionalInformationURL 0..* and
    CareplanIdentifierExtension named CarePlan 0..* and
    AppointmentMutabilityExtension named AppointmentMutability 0..1
* extension[ServiceEvent] ^requirements = "22 Palvelutapahtuman tunniste"
* extension[TopicId] ^requirements = "23 Asian tunniste"
* extension[QueueNo] ^requirements = "82 Jonotusnumero"
* extension[TicketNo] ^requirements = "101 Tikettinumero"
* extension[VisibleToCustodian] ^requirements = "59 Ajanvarauksen tietojen näyttäminen huoltajalle"
* extension[CustomerJourney] ^requirements = "20 Asiakaspolun tunniste\r\n20.1 Asiakaspolun nimi"
* extension[ParentAppointment] ^requirements = "12 Pääajanvaraus"
* extension[SelfServiceExtension] ^requirements = "84 AsiointiURL\r\n84.1 Järjestelmä tukee alaikäisen puolesta asiointia\r\n84.2 Järjestelmä tukee puolesta-asiointia valtakirjalla täysi-ikäisen puolesta\r\n84.3 Järjestelmä tukee rekisteripohjaista puolesta-asiointia täysi-ikäisen puolesta"
* extension[ResourceCalendar] ^requirements = "74 Resurssin kalenteritunniste\r\n75 Resurssin nimi"
// * extension[ResourceCalendar].extension contains ResourceCalendarName 0..1
* extension[ReferralId] ^requirements = "24 Ajanvaraukseen liittyvän lähetteen tai pyynnön tunniste"
* extension[RequestedService] ^requirements = "73 Varaustuote\r\n73.1 Varaustuotteen nimi"
* extension[MiscAppointmentData] ^requirements = "91 Muu sisältö"
* extension[PractitionerGender] ^requirements = "93 Palvelun toteuttajan sukupuoli"
* extension[NotificationMedium] ^requirements = "94 Muistutuksen tapa"
* extension[CareGuarantee] ^requirements = "97 Hoitotakuu"
* extension[AdditionalInformationURL] ^requirements = "98 Lisätietojen osoite"
* extension[CarePlan] ^requirements = "17 Ajanvaraukseen liittyvän suunnitelman tunniste"
* extension[AppointmentMutability] ^requirements = "95 Peruttavissa\r\n96 Siirrettävissä\r\n96.1 Peruutuksen tai siirron aikaraja"
* identifier 1..*
* identifier ^definition = "hl7fi: 18 Ajanvarauksen tunniste - mandatory, not recurring\r\n\r\nThis records identifiers associated with this appointment concern that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate (e.g. in CDA documents, or in written / printed documentation)."
* identifier.value 1..
// * identifier.use 0..
// * identifier.type 0..
// * identifier.period 0..
// * identifier.assigner 0..
* status ^comment = "hl7fi: Requires mapping to *Ajanvarauksen tila* code set (1.2.246.537.6.881.201501). Other mappings ok apart from \"siirretty\" (rescheduled) ja \"suunniteltu\". \r\n\r\nIf the Appointment's status is \"cancelled\" then all participants are expected to have their calendars released for the appointment period, and as such any Slots that were marked as BUSY can be re-set to FREE.\n\nThis element is labeled as a modifier because the status contains the code entered-in-error that mark the Appointment as not currently valid."
* status ^requirements = "19 Ajanvarauksen tila"
* status from $codeserver-booking-status-page (required)
* status ^short = "suunniteltu | tilattu | varattu | peruttu | siirretty | alkanut | toteutunut | ehdotettu | saapumatta"
* cancelationReason ^requirements = "19.1 Ajanvarauksen perumisen tai siirtämisen syy\r\n\r\nMandatory, if cancellation status is equivalent to \"Siirretty\" or \"Peruttu\""
* cancelationReason.coding.system = "urn:oid:1.2.246.537.6.126.2008" (exactly)
* cancelationReason.coding.system ^short = "THL - Palvelutapahtuman peruuntumisen tai siirtymisen syy"
* serviceCategory ..1
* serviceCategory ^requirements = "71.1 Palvelun luokka"
* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceCategory.coding.system ^short = "AR/YDIN - Palvelutapahtumaluokitus"
* serviceCategory.coding.system ^definition = "hl7fi: koodilla ilmaistu tieto palveluluokasta, johon ajanvaraus kohdistuu Huom. Palveluluokka ilmaistaan THL - Sosiaali- ja terveyspalvelujen luokituksen avulla."
* serviceType 1..1
* serviceType ^requirements = "71 Palvelun nimi"
* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* serviceType.coding.system ^short = "THL - Sosiaali- ja terveysalan palvelunimikkeistö"
* serviceType.coding.system ^comment = "hl7fi: koodilla ilmaistu tieto palvelusta, johon ajanvaraus kohdistuu Huom. Palvelun nimi ilmaistaan THL - Sosiaali- ja terveysalan palvelunimikkeistön avulla.\r\n\r\nThe URI may be an OID (urn:oid:...) or a UUID (urn:uuid:...).  OIDs and UUIDs SHALL be references to the HL7 OID registry. Otherwise, the URI should come from HL7's list of FHIR defined special URIs or it should reference to some definition that establishes the system clearly and unambiguously."
* serviceType.coding.system ^requirements = "71 Palvelun nimi"
* specialty ..0
* appointmentType ^requirements = "72 Asiointitapa"
* appointmentType.coding.system = "1.2.246.537.6.884.2015" (exactly)
* appointmentType.coding.system ^short = "hl7fi: asiointitapa"
* appointmentType.coding.system ^definition = "hl7fi: koodilla ilmaistu tieto ammattihenkilön ja asiakkaan välisen asioinnin tavasta"
* reasonCode ^slicing.discriminator.type = #exists
* reasonCode ^slicing.discriminator.path = "coding"
* reasonCode ^slicing.rules = #open
* reasonCode contains
    sliceSisaltotarkenne 0..* and
    slicePalvelutarve 0..1
* reasonCode[sliceSisaltotarkenne] ^definition = "hl7fi: 85 Varauksen sisältötarkenne, koodilla ilmaistu tarkentava tieto palvelun sisällöstä Huom. Tarkenteeksi voi valita useamman kuin yhden koodin, ja koodit voivat kuvata esimerkiksi sitä, mitä kuvantamis- tai laboratoriotutkimuksia tai toimenpiteitä suoritetaan."
* reasonCode[sliceSisaltotarkenne] ^requirements = "85 Varauksen sisältötarkenne"
* reasonCode[sliceSisaltotarkenne].coding 1..1
* reasonCode[sliceSisaltotarkenne].coding.version ..0
* reasonCode[sliceSisaltotarkenne].coding.userSelected ..0
* reasonCode[sliceSisaltotarkenne].text ..0
* reasonCode[slicePalvelutarve] ^definition = "hl7fi: 76 Palvelutarve vapaamuotoisena tekstinä ilmaistu tieto asiakkaan palvelutarpeesta Huom. Palvelutarve kuvataan tasolla, jolla henkilön palveluiden tarve voidaan kuvata yhteisellä termillä, esim. raskausajan seuranta ja tuki."
* reasonCode[slicePalvelutarve] ^requirements = "76 Palvelutarve"
* reasonCode[slicePalvelutarve].coding ..0
* reasonCode[slicePalvelutarve].text 1..
* reasonReference only Reference(Condition)
* reasonReference ^requirements = "56 kuvaus oireista/vaivasta ja \r\n57 riskitiedot (Condition/Note)"
* reasonReference ^type.aggregation = #contained
* reasonReference.type = "Condition" (exactly)
* reasonReference.identifier ..0
* reasonReference.display ..0
* priority ..0
* description ..0
* supportingInformation ..0
* start ^requirements = "86 Aikaväli"
* end ^requirements = "86 Aikaväli"
* minutesDuration ..0
* created ^requirements = "38 Merkinnän kirjausaika"
* comment ^short = "hl7fi: asiakkaalle tai ajanvarauksen katselijalle tarkoitettu vapaamuotoinen lisätieto"
* comment ^definition = "hl7fi: asiakkaalle tai ajanvarauksen katselijalle tarkoitettu vapaamuotoinen lisätieto"
* comment ^requirements = "99 Huomautukset"
* patientInstruction ^short = "hl7fi: vapaamuotoisena tekstinä ilmaistu potilasohje"
* patientInstruction ^definition = "hl7fi: vapaamuotoisena tekstinä ilmaistu potilasohje, joka tarjoaa asiakkaalle tietoa esimerkiksi sairaudesta, tutkimuksista, hoidoista, toimenpiteisiin valmistautumisesta, jälkihoidosta, itsehoidosta, toipumisesta, sairauden kulusta ja sairauden ennusteesta Huom. Potilasohje voi olla esim. Käypä hoito -suositus tai yleinen sairaalan antama ohje, joka voi olla myös yksikkökohtainen."
* patientInstruction ^requirements = "100 Potilasohje"
* patientInstruction.extension ^slicing.discriminator.type = #value
* patientInstruction.extension ^slicing.discriminator.path = "url"
* patientInstruction.extension ^slicing.rules = #open
// * patientInstruction.extension[PatientInstructionURL] only PatientInstructionURLExtension
// * patientInstruction.extension[PatientInstructionURL] ^sliceName = "PatientInstructionURL"
// * patientInstruction.extension[PatientInstructionURL] ^requirements = "100.1 Linkki potilasohjeeseen"
* basedOn ..0
* requestedPeriod ..1
* requestedPeriod ^requirements = "35 Ajankohta, jolloin ajanvaraus ohjeistettu tehtäväksi"