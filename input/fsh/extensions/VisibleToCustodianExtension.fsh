Extension: VisibleToCustodianExtension
Id: VisibleToCustodianExtension
Description: """59 Ajanvarauksen tietojen näyttäminen huoltajalle

1=Ajanvarauksen tiedot saa näyttää huoltajalle,2=Ajanvarauksen tietoja ei saa näyttää huoltajalle"""
Context: "StructureDefinition"
* ^meta.lastUpdated = "2020-01-02T13:46:15.062+00:00"
* ^url = "http://hl7.fi/fhir/StructureDefinition/VisibleToCustodian"
* ^status = #draft
* ^date = "2020-01-02T13:46:14.7566368+00:00"
* url = "http://hl7.fi/fhir/StructureDefinition/VisibleToCustodian" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^requirements = "59 Ajanvarauksen tietojen näyttäminen huoltajalle\r\n\r\n1=Ajanvarauksen tiedot saa näyttää huoltajalle,2=Ajanvarauksen tietoja ei saa näyttää huoltajalle"