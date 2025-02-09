Instance: ExampleHealthcareService
InstanceOf: FiSchedulingHealthcareService
Usage: #inline
* id = "example-service"
* providedBy = Reference(Palveluyksikko)
* category[0] = urn:oid:1.2.246.537.6.50#SOTE4.2 "Terveydenhoitajan palvelu"
* category[+] = http://terminology.hl7.org/CodeSystem/service-category#17 "General Practice"
* name = "Ajanvaraus terveydenhoitajalle"
* type = urn:oid:1.2.246.537.6.49#EDC "Terveydenhoitajan palvelu"