Extension: ReferralIdExtension
Id: ReferralIdExtension
Description: "Referral id extension for appointment (string). 24 Ajanvaraukseen liittyvän lähetteen tai pyynnön tunniste"
Context: "FinnishSchedulingAppointment"
* ^url = "http://hl7.fi/fhir/StructureDefinition/ReferralIdExtension"
* ^status = #draft
* url = "http://hl7.fi/fhir/StructureDefinition/ReferralIdExtension" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^requirements = "24 Ajanvaraukseen liittyvän lähetteen tai pyynnön tunniste"