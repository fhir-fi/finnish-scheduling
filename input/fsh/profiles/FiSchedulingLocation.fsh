Profile: FiSchedulingLocation
Parent: Location
Id: fi-scheduling-location
Description: "Details for schedulable location"
* ^url = "http://hl7.fi/fhir/StructureDefinition/FiSchedulingLocation"
* identifier 1..1
* identifier ^requirements = "79 Palveluntoteuttaja tai XX Palveluntoteuttajan palvelupisteen tunniste"
* identifier.value ^requirements = "79 Palveluntoteuttaja tai XX Palveluntoteuttajan palvelupisteen tunniste"
* name ^requirements = "80 Palveluntoteuttajan nimi"
* mode ..0
* telecom ^requirements = "83 Yhteystiedot"
* telecom.system 1..
* telecom.value 1..
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* address.use ..0
* address.type ..0
* address.text ^requirements = "81.1 Palvelupisteen sijainnin lisätiedot"
* address.line ^requirements = "81 Palvelupisteen sijainti"
* address.city ^requirements = "81 Palvelupisteen sijainti"
* address.district ..0
* address.state ..0
* address.postalCode ^requirements = "81 Palvelupisteen sijainti"
* address.country ^requirements = "81 Palvelupisteen sijainti"
* address.period ..0
* physicalType ..0
* managingOrganization ^requirements = "77 Palveluntuottaja\r\n78 Palveluntuottajan nimi"
* managingOrganization.identifier ^requirements = "77 Palveluntuottaja \r\n\r\nTHL - SOTE-organisaatiorekisteri 1.2.246.537.6.202.2008\r\nValvira - Terveydenhuollon itsenäiset ammatinharjoittajat 1.2.246.537.6.203.2014"
* managingOrganization.identifier.use ..0
* managingOrganization.identifier.type ..0
* managingOrganization.identifier.system 1..
* managingOrganization.identifier.value 1..
* managingOrganization.identifier.period ..0
* managingOrganization.identifier.assigner ..0
* endpoint ..0