Profile: FiSchedulingAppointment
Parent: Appointment
Id: fi-scheduling-appointment
Description: "Base profile for appointment (*ajanvaraus*) in Finnish Scheduling environment. The contents is based on the scheduling appointment specification."
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
* identifier 1..*
* identifier.value 1..
* cancelationReason.coding.system = "urn:oid:1.2.246.537.6.126.2008" (exactly)
* serviceCategory.coding.system = "urn:oid:1.2.246.537.6.88.2008" (exactly)
* serviceType 1..*
* serviceType.coding.system = "urn:oid:1.2.246.537.6.49.201501" (exactly)
* appointmentType.coding.system = "1.2.246.537.6.884.2015" (exactly)
* reasonCode ^slicing.discriminator.type = #exists
* reasonCode ^slicing.discriminator.path = "coding"
* reasonCode ^slicing.rules = #open
* reasonCode contains
    sliceSisaltotarkenne 0..* and
    slicePalvelutarve 0..1
* reasonCode[sliceSisaltotarkenne].coding 1..1
* reasonCode[sliceSisaltotarkenne].coding.version ..0
* reasonCode[sliceSisaltotarkenne].coding.userSelected ..0
* reasonCode[sliceSisaltotarkenne].text ..0
* reasonCode[slicePalvelutarve].coding ..0
* reasonCode[slicePalvelutarve].text 1..
* reasonReference only Reference(Condition)
* reasonReference ^type.aggregation = #contained
* reasonReference.type = "Condition" (exactly)
* patientInstruction.extension ^slicing.discriminator.type = #value
* patientInstruction.extension ^slicing.discriminator.path = "url"
* patientInstruction.extension ^slicing.rules = #open
* patientInstruction.extension contains PatientInstructionURL named PatientInstructionURL 0..1
* patientInstruction.extension[PatientInstructionURL] ^sliceName = "PatientInstructionURL"
