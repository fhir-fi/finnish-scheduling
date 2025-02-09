Instance: ExampleAppointment4
InstanceOf: FiSchedulingAppointment
Usage: #example
/* * meta.security = fipta-cs-visibletocustodian#1 "Huoltaja saa käsitellä ajanvaraustietoja" */
* id = "example-appointment-4"
* contained[0] = IidaKoski
* contained[+] = ExampleCondition1
* contained[+] = ExampleCondition2
* contained[+] = Palveluyksikko
* contained[+] = ExampleHealthcareService
* contained[+] = ExampleLocation
* identifier.system = "http://organisaationmaarittelemanimiavaruus.fi"
* identifier.value = "12345"
* status = #booked
* serviceCategory[thlCodedCategory]
  * coding[hl7Type] = http://terminology.hl7.org/CodeSystem/service-category#17 "General Practice"
  * coding[thlType] = urn:oid:1.2.246.537.6.50#SOTE23.1 "Perusterveydenhuollon vastaanottopalvelu"
* serviceType[thlCodedType]
  * coding[thlType] = urn:oid:1.2.246.537.6.49#EDC "Terveydenhoitajan palvelu"
  * coding[hl7Type] = http://terminology.hl7.org/CodeSystem/service-type#74 "Generalist counselling"
* reasonReference[0] = Reference(ExampleCondition1)
* reasonReference[+] = Reference(ExampleCondition2)
* start = "2023-06-10T09:00:00+00:00"
* end = "2023-06-10T11:00:00+00:00"
* comment = "Asiakkaalle tai ajanvarauksen katselijalle tarkoitettu vapaamuotoinen lisätieto voidaan kirjoittaa tähän."
* participant[0]
  /*
  * type = fipta-cs-appointmenttypecategory#1 "Asiakas tai potilas, jota resurssi koskee"
  */
  * actor = Reference(IidaKoski)
  * status = #accepted  
* participant[+]
  /*
  * type = fipta-cs-appointmenttypecategory#2 "Terveydenhuollon palvelu, johon ajanvaraus kohdistuu"
  */
  * actor = Reference(ExampleHealthcareService)
  * status = #accepted  
* participant[+]
  /*
  * type = fipta-cs-appointmenttypecategory#3 "Palvelupisteen sijainti"
  */
  * actor = Reference(ExampleLocation)
  * status = #accepted  
