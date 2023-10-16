Profile: VaPatient
Id: va-patient
Parent: Patient
Title: "Verbal Autopsy Patient"
Description: "Example Verbal Autopsy Patient Profile"
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    phn 1..1 and
    nic 0..* and
    ppn 0..* and
    scn 0..* and
    dl 0..* and
    other 0..1
* identifier[phn].system 1..
* identifier[phn].value 1..
* identifier[phn].system = "http://who.int/id/phn" (exactly)
* identifier[phn] ^short = "Personal Health Number"
* identifier[nic].system 1..
* identifier[nic].value 1..
* identifier[nic].system = "http://who.int/id/nic" (exactly)
* identifier[nic] ^short = "National Identity Card Number"
* identifier[ppn].system 1..
* identifier[ppn].value 1..
* identifier[ppn].system = "http://who.int/id/ppn" (exactly)
* identifier[ppn] ^short = "Passport Number"
* identifier[scn].system 1.. 
* identifier[scn].value 1.. 
* identifier[scn].system = "http://whi.int/id/scn" (exactly)
* identifier[scn] ^short = "Senior Citizen Number"
* identifier[dl].system 1..
* identifier[dl].value 1..
* identifier[dl].system = "http://who.int/id/dln" (exactly)
* identifier[dl] ^short = "Driving License Number"
* identifier[other].system 1..
* identifier[other].value 1..
* identifier[other].system = "http://who.int/id/other" (exactly)
* identifier[other] ^short = "Other Identifier Not Specified Above"
* gender 1..
* birthDate 1..
* birthDate ^comment = "When exact birthDate is not known, it should be calculated from the age"