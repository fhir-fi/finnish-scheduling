// @Name: FiSchedulingAppointment instance example
// @Description: An example of an instance of a FiSchedulingAppointment resource

Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Instance: example-appointment
InstanceOf: FiSchedulingAppointment
Usage: #example
* identifier[0].value = "123456789"
* status = #booked
* serviceCategory = urn:oid:1.2.246.537.6.88.2008#PT101 "1.2.246.537.6.88.2008"
* serviceType = urn:oid:1.2.246.537.6.49.201501#NC "Isyyden selvittämispalvelu"
* appointmentType = urn:oid:1.2.246.537.6.884.2015#1 "1.2.246.537.6.884.2015"
* start = "2024-01-01T12:00:00+02:00"
* end = "2024-01-01T12:30:00+02:00"
* slot = Reference(Slot/123456789)
* created = "2019-12-01"
* comment = "Äidillä ei ole virallista henkilöllisyystodistusta"
* patientInstruction = "Vanhemmilla tulee olla mukana voimassa olevat henkilöllisyystodistukset sekä äidillä neuvolan äitiyskortti (todistus raskaudesta). Käynnin yhteydessä tehdään oikeusgeneettinen DNA-tutkimus. Ennen näytteen ottamista täyttyy olla syömättä, juomatta ja tupakoimatta vähintään 30 minuuttia"
* participant[0].actor.identifier.value = "010101-123N"
* participant[=].actor.identifier.system = "urn:oid:1.2.246.21"
* participant[=].actor.display = "Pentti Potilas"
* participant[=].status = #accepted
* participant[=].type = $v3-ParticipationType#SBJ "subject"
* participant[+].actor.identifier.value = "1.2.246.10.10303777.10.777"
* participant[=].actor.display = "Vastaanotto"
* participant[=].status = #accepted
* participant[=].type = $v3-ParticipationType#LOC "location"
* participant[+].actor = Reference(HealthcareService/example) "Lastenvalvojan vastaanotto"
* participant[=].status = #accepted
* extension[0].url = "http://hl7.fi/fhir/StructureDefinition/NotificationInfoExtension"
* extension[=].valueContactPoint.system = #sms
* extension[=].valueContactPoint.value = "+3581234567"
* extension[+].url = "http://hl7.fi/fhir/StructureDefinition/AppointmentMutabilityExtension"
* extension[=].extension[0].url = "Cancellable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Reschedulable"
* extension[=].extension[=].valueBoolean = false