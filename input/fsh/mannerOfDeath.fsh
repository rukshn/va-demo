lias: $loinc = http://loinc.org
Alias: $vrdr-decedent = http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent
Alias: $vrdr-certifier = http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier
Alias: $vrdr-manner-of-death-vs = http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-manner-of-death-vs

Profile: MannerOfDeath
Parent: Observation
Id: vrdr-manner-of-death
Title: "Manner of Death"
Description: "Manner of Death (Observation)"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "2.2.0"
* ^publisher = "HL7 International / Public Health"
* ^contact.name = "HL7 International / Public Health"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* status = #final (exactly)
* code = $loinc#69449-7
* subject 1..
* subject only Reference($vrdr-decedent)
* performer only Reference($vrdr-certifier)
* performer ^short = "Certifier"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $vrdr-manner-of-death-vs (required)