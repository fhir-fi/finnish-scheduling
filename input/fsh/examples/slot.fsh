Instance: ExampleSlot
InstanceOf: Slot
Description: "An example Slot"
Usage: #example
* id = "123456789"
* identifier.value = "123456789"
* serviceCategory = urn:oid:1.2.246.537.6.50.201801#SOTE19 "Perheoikeudelliset palvelut"
* serviceType = urn:oid:1.2.246.537.6.49.201501#NC "Isyyden selvittämispalvelu"
* appointmentType.coding = urn:oid:1.2.246.537.6.884.2015#10 "Kertakäynti toimipaikassa"
* appointmentType.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0276#ROUTINE
* appointmentType.text = "Kertakäynti toimipaikassa"
* schedule = Reference(Schedule/234567890)
* status = #free
* start = "2020-01-01T12:00:00+02:00"
* end = "2020-01-01T12:30:00+02:00"
