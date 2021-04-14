Instance: patient-example-kaitlyn-b
InstanceOf: Patient
Description: "Compass Trial example patient Kaitlyn"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Bounce"
* name.given[0] = "Kaitlyn"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "545-123-4560"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "kaitlynb@example.com"
* gender = #female
* birthDate = "1985-02-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: medication-example-kadcyla
InstanceOf: Medication
Description: "Kadcyla IV at 3.6mg" // every 21 days
Usage: #inline
* code = RXN#1371046 "KADCYLA"

Instance: medication-example-tucatinib
InstanceOf: Medication
Description: "oral Tucatinib 300mg" // twice a day every day
Usage: #inline
* code = RXN#2361290 "tucatinib 150 MG Oral Tablet"

Instance: ctc-adverse-event-compass-ex1
InstanceOf: CTCAdverseEvent
Description: "Grade 1 ALT attributed to Kadcyla and Tucatinib"
* contained[0] = medication-example-kadcyla
* contained[1] = medication-example-tucatinib
* subject = Reference(Patient/patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased"
/* 
* event.coding =
* event.coding.version =
* event.coding.code =
* event.coding.display =
*/
* event.text = "Alanine aminotransferase (ALT) increased at 50"
//* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 "Mild Adverse Event"
* extension[ctcae-grade].valueCodeableConcept = CTCAEGradeCS#1 "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing
* date = "2020-04-22"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(medication-example-kadcyla)
//* suspectEntity[0].causality[0].productRelatedness = "probable"
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-example-tucatinib)
//* suspectEntity[1].causality[1].productRelatedness = "probable"
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[adverse-event-expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
//* extension[resolvedDate].valueDateTime = "2020-06-10"
* extension[adverse-event-resolved-date].valueDateTime = "2020-06-10"
// *study = Reference(ResearchStudy)
// create ResearchStudy for Compass trial