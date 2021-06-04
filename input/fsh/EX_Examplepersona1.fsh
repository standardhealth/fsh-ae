Instance: ae-bundle-kaitlyn-compass-trial
InstanceOf: AEPatientBundle  //mCodePatientBundle
Description: "Extended AdverseEvent example as a Patient Bundle for Compass Trial"
* entry[0].resource = patient-example-kaitlyn-b
* entry[0].fullUrl = "http://example.org/patient-example-kaitlyn-b"
* entry[CTCAdverseEvent][0].resource = ctc-adverse-event-compass-ex1
* entry[CTCAdverseEvent][0].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1"
* entry[CTCAdverseEvent][+].resource = ctc-adverse-event-compass-ex1a
* entry[CTCAdverseEvent][=].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1a"
* entry[CTCAdverseEvent][+].resource = ctc-adverse-event-compass-ex1a
* entry[CTCAdverseEvent][=].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1a"
* entry[CTCAdverseEvent][+].resource = ctc-adverse-event-compass-ex1b
* entry[CTCAdverseEvent][=].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1b"
* entry[CTCAdverseEvent][+].resource = ctc-adverse-event-compass-ex2
* entry[CTCAdverseEvent][=].fullUrl = "http://example.org/ctc-adverse-event-compass-ex2"
* entry[+].resource = kaitlyn-primary-cancer-condition-ex1
* entry[=].fullUrl = "http://example.org/kaitlyn-primary-cancer-condition-ex1"
* entry[+].resource = medication-request-example-kadcyla
* entry[=].fullUrl = "http://example.org/medication-request-example-kadcyla"
* entry[+].resource = medication-request-example-tucatinib
* entry[=].fullUrl = "http://example.org/medication-request-example-tucatinib"
* entry[+].resource = medication-administration-kadcyla
* entry[=].fullUrl = "http://example.org/medication-administration-kadcyla"
* entry[+].resource = medication-administration-tucatinib
* entry[=].fullUrl = "http://example.org/medication-administration-tucatinib"

/* 
ResearchStudy doesn't work in the bundle, causes it to not render
* entry[+].resource = clinical-trial-example-compass
* entry[=].fullUrl = "http://example.org/clinical-trial-example-compass"
*/

Instance: patient-example-kaitlyn-b
InstanceOf: mCodeCancerPatient
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

Instance: practitioner-oncology-nurse-jane
InstanceOf: USCorePractitioner
Description: "Example RN practitioner"
* identifier[NPI].value = "55667788"
* name.family = "Nurse"
* name.given[0] = "Jane"
* name.prefix[0] = "Ms."
* address.use = #work
* address.line[0] = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#RN
* qualification.code.coding[0].version = "2.7"

Instance: kaitlyn-primary-cancer-condition-ex1
InstanceOf: mCodePrimaryCancerCondition
Description: "Primary Cancer Condition for Kaitlyn B"
* id = "KaitlynPrimaryCancerConditionEx1"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#353431000119107 "Malignant neoplasm of female left breast (disorder)"
* category = #problem-list-item
//* code = SCT#448952004 "Invasive ductal carcinoma of female breast (disorder)"
//* bodySite.extension[laterality].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(patient-example-kaitlyn-b)
* onsetDateTime = "2019-05-01"
* asserter = Reference(PractitionerExample1)

Instance: medication-request-example-kadcyla
InstanceOf: CancerRelatedMedicationRequest
Description: "Example showing clinial trial medication Kadcyla"
* status = #active "active"
* intent = #order
* medicationCodeableConcept = RXN#1371046 "KADCYLA"
* subject = Reference(patient-example-kaitlyn-b)
* requester = Reference(PractitionerExample1)
* reasonReference = Reference(kaitlyn-primary-cancer-condition-ex1)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2020-04-01"
* authoredOn = "2020-03-12"
* dosageInstruction.text = "Kadcyla IV at 3.6mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 3.6 'mg' "mg"
// Once every 21 days
* dosageInstruction.maxDosePerAdministration.value = 1

Instance: medication-request-example-tucatinib
InstanceOf: CancerRelatedMedicationRequest
Description: "Example showing clinial trial medication Tucatinib"
//* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* intent = #order
* medicationCodeableConcept = RXN#2361290 "tucatinib 150 MG Oral Tablet"
* subject = Reference(patient-example-kaitlyn-b)
* requester = Reference(PractitionerExample1)
* reasonReference = Reference(kaitlyn-primary-cancer-condition-ex1)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2020-04-01"
* authoredOn = "2020-03-12"
* dosageInstruction.text = "oral twice a day every day"
* dosageInstruction.route = SCT#26643006 "Oral route (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 150 'MG' "MG"
// twice a day every day
* dosageInstruction.maxDosePerAdministration.value = 2

Instance: clinical-trial-example-compass
InstanceOf: ResearchStudy
Description: "Alliance COMPASS Protocol A011801"
* title = "Alliance COMPASS Trial A011801" 
* status =  http://hl7.org/fhir/research-study-status#active "Active"

Instance: medication-administration-kadcyla
InstanceOf: CancerRelatedMedicationAdministration
Description: "Example showing clinial trial medication adminstration Kadcyla"
* status = #completed "completed"
* medicationCodeableConcept = RXN#1371046 "KADCYLA"
* subject = Reference(patient-example-kaitlyn-b)
* performer.actor = Reference(practitioner-oncology-nurse-jane)
* reasonReference = Reference(kaitlyn-primary-cancer-condition-ex1)
* request = Reference(medication-request-example-kadcyla)
* effectiveDateTime = "2020-04-01"
* note.authorReference = Reference(practitioner-oncology-nurse-jane)
* note.time = "2020-04-01"
* note.text = "3.6mg administered by continuous infusion. Patient tolerated infusion without side effects."
* dosage.dose = 3.6 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"

Instance: medication-administration-tucatinib
InstanceOf: CancerRelatedMedicationAdministration
Description: "Example showing clinial trial medication adminstration Tucatinib"
* status = #completed "completed"
* medicationCodeableConcept = RXN#2361290 "tucatinib 150 MG Oral Tablet"
* subject = Reference(patient-example-kaitlyn-b)
* performer.actor = Reference(practitioner-oncology-nurse-jane)
* reasonReference = Reference(kaitlyn-primary-cancer-condition-ex1)
* request = Reference(medication-request-example-tucatinib)
* effectiveDateTime = "2020-04-01"
* note.authorReference = Reference(practitioner-oncology-nurse-jane)
* note.time = "2020-04-01"
* note.text = "Patient took 2 tablets"
* dosage.dose = 300 'MG' "MG"
* dosage.route = SCT#26643006 "Oral route (qualifier value)"

Instance: ctc-adverse-event-compass-ex1
InstanceOf: CTCAdverseEvent
Description: "Grade 1 ALT"
* subject = Reference(patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased" 
* event.coding.version = "20.3"
* event.text = "Alanine aminotransferase (ALT) increased at 50"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 // "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing  // resolved on 6/10/20 after 3 more visits - goes to grade 3 then back to 1 then WNL
* date = "2020-04-22"
* recorder = Reference(PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-administration-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-administration-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"

Instance: ctc-adverse-event-compass-ex1a
InstanceOf: CTCAdverseEvent
Description: "Grade 3 ALT"
* subject = Reference(patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased" 
* event.coding.version = "20.3"
* event.text = "Alanine aminotransferase (ALT) increased to 200"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#3 // "Severe Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing 
* date = "2020-05-13"
* recorder = Reference(PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-administration-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-administration-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"

Instance: ctc-adverse-event-compass-ex1b
InstanceOf: CTCAdverseEvent
Description: "ALT back to grade 1 and resolved"
* subject = Reference(patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased" 
* event.coding.version = "20.3"
* event.text = "Alanine aminotransferase (ALT) decreased to 60"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 // "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* date = "2020-05-20"
* recorder = Reference(PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-administration-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-administration-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-06-10"

Instance: ctc-adverse-event-compass-ex2
InstanceOf: CTCAdverseEvent
Description: "Grade 1 Nausea/vomiting"  // both are AEs, which to use or make them separate?
* subject = Reference(patient-example-kaitlyn-b)
* event = MEDDRA#10028813  "Nausea" 
* event.coding.version = "20.3"
* event.text = "Nausea"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 // "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing  // resolved on 6/10/20 after 3 more visits - goes to grade 3 then back to 1 then WNL
* date = "2020-05-25"
* recorder = Reference(PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-administration-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53258
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Possibly Related to Intervention"
* suspectEntity[1].instance = Reference(medication-administration-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2021-01-21"