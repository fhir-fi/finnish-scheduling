Instance: example-view-own-appointments
InstanceOf: ExampleScenario
Usage: #definition
* status = #draft
* purpose = "Purpose: this serves to ."
* actor[0].actorId = "Patient"
* actor[=].type = #person
* actor[=].name = "Patient"
* actor[=].description = "The Patient"
* actor[+].actorId = "MAP"
* actor[=].type = #entity
* actor[=].name = "Patient's Tablet"
* actor[=].description = "The entity that receives the Administration Requests to show the nurse to perform them"
* actor[+].actorId = "OP"
* actor[=].type = #entity
* actor[=].name = "MAR / Scheduler"
* actor[=].description = "The Medication Administration Order Placer"
* actor[+].actorId = "MAC"
* actor[=].type = #entity
* actor[=].name = "MAR / EHR"
* actor[=].description = "The entity that receives the Medication Administration reports"
* instance[0].resourceId = "iherx001"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Initial Prescription"
* instance[=].description = "The initial prescription which describes \"medication X, 3 times per day\" - the exact scheduling is not   in the initial prescription (it is left for the care teams to decide on the schedule)."
* instance[+].resourceId = "iherx001.001"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 1, morning"
* instance[=].description = "The administration request for day 1, morning"
* instance[+].resourceId = "iherx001.002"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 1, lunch"
* instance[=].description = "The administration request for day 1, lunch"
* instance[+].resourceId = "iherx001.003"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 1, evening"
* instance[=].description = "The administration request for day 1, evening"
* instance[+].resourceId = "iherx001.004"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 2, morning"
* instance[=].description = "The administration request for day 2, morning"
* instance[+].resourceId = "iherx001.005"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 2, lunch"
* instance[=].description = "The administration request for day 2, lunch"
* instance[+].resourceId = "iherx001.006"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 2, evening"
* instance[=].description = "The administration request for day 2, evening"
* instance[+].resourceId = "iheadm001a"
* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Morning meds - taken"
* instance[=].description = "Administration report for day 1, morning: Taken"
* instance[+].resourceId = "iheadm001b"
* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Morning meds - not taken"
* instance[=].description = "Administration report for day 1, morning: NOT Taken"
* instance[+].resourceId = "iherx001bundle"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Bundle of Medication Requests"
* instance[=].description = "All the medication Requests for Day 1"
* instance[=].containedInstance[0].resourceId = "iherx001.001"
* instance[=].containedInstance[+].resourceId = "iherx001.002"
* instance[=].containedInstance[+].resourceId = "iherx001.003"
* instance[=].containedInstance[+].resourceId = "iherx001.004"
* instance[=].containedInstance[+].resourceId = "iherx001.005"
* instance[=].containedInstance[+].resourceId = "iherx001.006"
* instance[+].resourceId = "iheadm002"
* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Lunch meds - taken"
* instance[=].description = "Administration report for day 1, lunch: Taken"
* instance[=].version[0].versionId = "iheadm002v1"
* instance[=].version[=].description = "Medication just taken"
* instance[=].version[+].versionId = "iheadm002v2"
* instance[=].version[=].description = "Medication rejected"
* instance[+].resourceId = "iherxqry"
* instance[=].resourceType = #SearchParameter
* instance[=].name = "Search query1"
* instance[=].description = "The search administration request for day 1, morning"
* process.title = "Mobile Medication Administration"
* process.description = "This scenario demonstrates the process of getting the relevant medication instructions for a patient visit and reporting the results of administration. The scenario is as follows: After the prescription is issued, the institution schedules each individual administration event in the Medication Administration Record (MAR). When preparing for a visit, the nurse queries the MAR for the scheduled administrations, obtaining a bundle of records. The nurse then performs the care activities and registers the results in the device. Upon synchronization of the device and the institution, the results of administration are uploaded to the EHR, thus updating the MAR."
* process.preConditions = "Medication administration requests are in the EHR / MAR, scheduled for each individual intake."
* process.postConditions = "Medication administration Reports are submitted, EHR is updated."
* process.step[0].operation.number = "1"
* process.step[=].operation.name = "1. Get today's schedule"
* process.step[=].operation.initiator = "Patient"
* process.step[=].operation.initiatorActive = true
* process.step[=].operation.receiver = "MAP"
* process.step[=].operation.receiverActive = true
//* process.step[+].process.title = "P1. Query Administration Requests"
//* process.step[=].process.description = "Query for medication administration orders,\\n- For today's shifts\\n- For today's patients"
//* process.step[=].process.step.operation.number = "2"
//* process.step[=].process.step.operation.name = "2.Query for medication administration orders,\\n- For today's shifts\\n- For today's patients"
//* process.step[=].process.step.operation.initiator = "Patient"
//* process.step[=].process.step.operation.initiatorActive = true
//* process.step[=].process.step.operation.receiver = "Patient"
//* process.step[=].process.step.operation.receiverActive = true
//* process.step[=].process.step.operation.request.resourceId = "iherxqry"
//* process.step[=].process.step.operation.response.resourceId = "iherx001bundle"
//* process.step[+].pause = true
//* process.step[+].operation.number = "4"
//* process.step[=].operation.name = "Notify (alert)"
//* process.step[=].operation.initiator = "MAP"
//* process.step[=].operation.receiver = "Nurse"
//* process.step[+].operation.number = "5"
//* process.step[=].operation.name = "Read orders"
//* process.step[=].operation.initiator = "Nurse"
//* process.step[=].operation.receiver = "MAP"
//* process.step[+].pause = true
//* process.step[+].operation.number = "5"
//* process.step[=].operation.name = "Ask if patient took meds"
//* process.step[=].operation.initiator = "Nurse"
//* process.step[=].operation.receiver = "Nurse"
//* process.step[+].alternative[0].title = "Patient took drugs"
//* process.step[=].alternative[=].description = "Invoke if patient took medications"
//* process.step[=].alternative[=].step.process.title = "Register Meds taken"
//* process.step[=].alternative[=].step.process.step.operation.number = "1a"
//* process.step[=].alternative[=].step.process.step.operation.name = "Register Meds taken"
//* process.step[=].alternative[=].step.process.step.operation.initiator = "Nurse"
//* process.step[=].alternative[=].step.process.step.operation.receiver = "MAP"
//* process.step[=].alternative[=].step.process.step.operation.initiatorActive = true
//* process.step[=].alternative[+].title = "No drugs"
//* process.step[=].alternative[=].description = "No, patient did not take drugs"
//* process.step[=].alternative[=].step.process.title = "Register Meds NOT taken"
//* process.step[=].alternative[=].step.process.step.operation.number = "1b"
//* process.step[=].alternative[=].step.process.step.operation.name = "Register Meds NOT taken"
//* process.step[=].alternative[=].step.process.step.operation.initiator = "Nurse"
//* process.step[=].alternative[=].step.process.step.operation.receiver = "MAP"
//* process.step[=].alternative[=].step.process.step.operation.initiatorActive = true
//* process.step[=].alternative[+].title = "Not clear"
//* process.step[=].alternative[=].description = "Unknown whether patient took medications or not"
//* process.step[=].alternative[=].step.pause = true
//* process.step[+].pause = true
//* process.step[+].operation.number = "6"
//* process.step[=].operation.name = "Administer drug"
//* process.step[=].operation.initiator = "Nurse"
//* process.step[=].operation.receiver = "Nurse"
//* process.step[+].operation.number = "7"
//* process.step[=].operation.name = "Register administration"
//* process.step[=].operation.initiator = "Nurse"
//* process.step[=].operation.receiver = "MAP"
//* process.step[=].operation.initiatorActive = true
//* process.step[+].pause = true
//* process.step[+].process.title = "P2. Update administration reports"
//* process.step[=].process.step.operation.number = "8"
//* process.step[=].process.step.operation.name = "Nurse updates administration report"
//* process.step[=].process.step.operation.initiator = "Nurse"
//* process.step[=].process.step.operation.receiver = "MAP"
//* process.step[=].process.step.operation.initiatorActive = true
//* process.step[=].process.step.operation.request.resourceId = "iheadm002"
//* process.step[+].pause = true
//* process.step[+].process.title = "P3. Upload administration reports"
//* process.step[=].process.description = "The nurse's system uploads the administration results to the server"
//* process.step[=].process.step.operation.number = "9"
//* process.step[=].process.step.operation.name = "Refresh"
//* process.step[=].process.step.operation.initiator = "MAP"
//* process.step[=].process.step.operation.receiver = "MAC"
//* process.step[=].process.step.operation.request.resourceId = "iheadm001"