Profile: FiSchedulingAppointment
Parent: Appointment
Id: fi-scheduling-appointment
Description: "Profile for appointment (*ajanvaraus*) in Finnish Scheduling environment."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AdditionalInformationURL named AdditionalInformationURL 0..* and
    AppointmentMutability named AppointmentMutability 0..1 and
    CareGuaranteeDetails named CareGuaranteeDetails 0..1 and
    CareplanIdentifier named CareplanIdentifier 0..* and
    ChildAppointment named ChildAppointment 0..1 and
    CustomerJourney named CustomerJourney 0..* and
    NotificationInfo named NotificationInfo 0..* and
    NotificationMedium named NotificationMedium 0..* and
    PractitionerGender named PractitionerGender 0..1 and
    QueueNo named QueueNo 0..* and
    ReferralId named ReferralId 0..* and
    RequestedService named RequestedService 0..1 and
    ResourceCalendarId named ResourceCalendarId 0..* and
    SelfServiceInfo named SelfServiceInfo 0..1 and
    ServiceAdditionalInformation named ServiceAdditionalInformation 0..* and
    TicketNo named TicketNo 0..* and
    TopicId named TopicId 0..1
* cancelationReason.coding.system = "urn:oid:1.2.246.537.6.126"
* serviceCategory ^slicing.discriminator.type = #exists
* serviceCategory ^slicing.discriminator.path = "coding"
* serviceCategory ^slicing.rules = #open
* serviceCategory contains thlCodedCategory 0..*
* serviceCategory[thlCodedCategory].coding ^slicing.discriminator.type = #value
* serviceCategory[thlCodedCategory].coding ^slicing.discriminator.path = "system"
* serviceCategory[thlCodedCategory].coding ^slicing.rules = #open
* serviceCategory[thlCodedCategory].coding contains
    thlType 1..* and
    hl7Type 0..*
* serviceCategory[thlCodedCategory].coding[thlType] 1..* 
* serviceCategory[thlCodedCategory].coding[thlType].system = "urn:oid:1.2.246.537.6.50" 
* serviceCategory[thlCodedCategory].coding[hl7Type] 0..* 
* serviceCategory[thlCodedCategory].coding[hl7Type].system = "http://terminology.hl7.org/CodeSystem/service-category" 
* serviceType ^slicing.discriminator.type = #exists
* serviceType ^slicing.discriminator.path = "coding"
* serviceType ^slicing.rules = #open
* serviceType contains thlCodedType 0..*
* serviceType[thlCodedType].coding ^slicing.discriminator.type = #value
* serviceType[thlCodedType].coding ^slicing.discriminator.path = "system"
* serviceType[thlCodedType].coding ^slicing.rules = #open
* serviceType[thlCodedType].coding contains
    thlType 1..* and
    hl7Type 0..*
* serviceType[thlCodedType].coding[thlType] 1..* 
* serviceType[thlCodedType].coding[thlType].system = "urn:oid:1.2.246.537.6.49" 
* serviceType[thlCodedType].coding[hl7Type] 0..* 
* serviceType[thlCodedType].coding[hl7Type].system = "http://terminology.hl7.org/CodeSystem/service-type" 
* appointmentType.coding.system = "1.2.246.537.6.884"
* reasonCode ^slicing.discriminator.type = #exists
* reasonCode ^slicing.discriminator.path = "coding"
* reasonCode ^slicing.rules = #open
* reasonCode contains
    sliceSisaltotarkenne 0..* and
    slicePalvelutarve 0..1
* reasonCode[sliceSisaltotarkenne].coding 1..1
* reasonCode[slicePalvelutarve].text 1..
* reasonReference only Reference(Condition)
* reasonReference ^type.aggregation = #contained
* reasonReference.type = "Condition" (exactly)
* patientInstruction.extension ^slicing.discriminator.type = #value
* patientInstruction.extension ^slicing.discriminator.path = "url"
* patientInstruction.extension ^slicing.rules = #open
* patientInstruction.extension contains PatientInstructionURL named PatientInstructionURL 0..1
* patientInstruction.extension[PatientInstructionURL] ^sliceName = "PatientInstructionURL"
