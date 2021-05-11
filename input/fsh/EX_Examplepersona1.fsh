Instance: ae-bundle-kaitlyn-compass-trial
InstanceOf: mCodePatientBundle
Description: "Extended AdverseEvent example as a Patient Bundle for Compass Trial"
* entry[0].resource = patient-example-kaitlyn-b
* entry[0].fullUrl = "http://example.org/patient-example-kaitlyn-b"
* entry[1].resource =  kaitlyn-primary-cancer-condition-ex1
* entry[1].fullUrl = "http://example.org/kaitlyn-primary-cancer-condition-ex1"
* entry[2].resource = clinical-trial-example-compass
* entry[2].fullUrl = "http://example.org/clinical-trial-example-compass"
* entry[3].resource = ctc-adverse-event-compass-ex1
* entry[3].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1"
* entry[4].resource = ctc-adverse-event-compass-ex1a
* entry[4].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1a"
* entry[5].resource = ctc-adverse-event-compass-ex1b
* entry[5].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1b"
* entry[6].resource = ctc-adverse-event-compass-ex2
* entry[6].fullUrl = "http://example.org/ctc-adverse-event-compass-ex2"
//* entry[CTCAdverseEvent].resource = ctc-adverse-event-compass-ex1
//* entry[CTCAdverseEvent].fullUrl = "http://example.org/ctc-adverse-event-compass-ex1"

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

Instance: kaitlyn-primary-cancer-condition-ex1
InstanceOf: mCodePrimaryCancerCondition
Description: "Primary Cancer Condition for Kaitlyn B"
* id = "KaitlynPrimaryCancerConditionEx1"
//* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition"
//* clinicalStatus = ClinStatus#active "Active"
//* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#353431000119107 "Malignant neoplasm of female left breast (disorder)"
* category = #problem-list-item
//* code = SCT#448952004 "Invasive ductal carcinoma of female breast (disorder)"
//* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#35917007 "Adenocarcinoma"
// ?? no breast in VS * bodySite = SCT#39607008 "Lung structure (body structure)"
//* bodySite.extension[laterality].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(Patient/patient-example-kaitlyn-b)
* onsetDateTime = "2019-05-01"
* asserter = Reference(Practitioner/PractitionerExample1)
//* stage.summary = AJCC#3C "IIIC"
//* stage.assessment = Reference(mCODETNMClinicalStageGroupExample01)

Instance: medication-example-kadcyla
InstanceOf: Medication
Description: "Kadcyla IV at 3.6mg" // every 21 days
Usage: #example //was #inline that caused error in QA report
* code = RXN#1371046 "KADCYLA"

Instance: medication-example-tucatinib
InstanceOf: Medication
Description: "oral Tucatinib 300mg" // twice a day every day
Usage: #example
* code = RXN#2361290 "tucatinib 150 MG Oral Tablet"

Instance: clinical-trial-example-compass
InstanceOf: ResearchStudy
Description: "Alliance COMPASS Protocol A011801"
* title = "Alliance COMPASS Trial A011801" 
* status =  http://hl7.org/fhir/research-study-status#active "Active"

Instance: ctc-adverse-event-compass-ex1
InstanceOf: CTCAdverseEvent
Description: "Grade 1 ALT"
* subject = Reference(Patient/patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased" 
/* event.coding = MEDDRA  // CTCAE 5.0
* event.coding.version = 20.3
* event.coding.code = MEDDRA#10001551
* event.coding.display = "Alanine aminotransferase increased"
*/
* event.text = "Alanine aminotransferase (ALT) increased at 50"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 // "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing  // resolved on 6/10/20 after 3 more visits - goes to grade 3 then back to 1 then WNL
* date = "2020-04-22"
* recorder = Reference(Practitioner/PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-example-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-example-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"

Instance: ctc-adverse-event-compass-ex1a
InstanceOf: CTCAdverseEvent
Description: "Grade 3 ALT"
* subject = Reference(Patient/patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased" 
/* event.coding = MEDDRA  // CTCAE 5.0
* event.coding.version = 20.3
* event.coding.code = MEDDRA#10001551
* event.coding.display = "Alanine aminotransferase increased"
*/
* event.text = "Alanine aminotransferase (ALT) increased to 200"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#3 // "Severe Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing 
* date = "2020-05-13"
* recorder = Reference(Practitioner/PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-example-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-example-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"

Instance: ctc-adverse-event-compass-ex1b
InstanceOf: CTCAdverseEvent
Description: "ALT back to grade 1 and resolved"
* subject = Reference(Patient/patient-example-kaitlyn-b)
* event = MEDDRA#10001551  "Alanine aminotransferase increased" 
/* event.coding = MEDDRA  // CTCAE 5.0
* event.coding.version = 20.3
* event.coding.code = MEDDRA#10001551
* event.coding.display = "Alanine aminotransferase increased"
*/
* event.text = "Alanine aminotransferase (ALT) decreased to 60"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 // "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* date = "2020-05-20"
* recorder = Reference(Practitioner/PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-example-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53259
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* suspectEntity[1].instance = Reference(medication-example-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-06-10"

Instance: ctc-adverse-event-compass-ex2
InstanceOf: CTCAdverseEvent
Description: "Grade 1 Nausea/vomiting"  // both are AEs, which to use or make them separate?
* subject = Reference(Patient/patient-example-kaitlyn-b)
* event = MEDDRA#10028813  "Nausea" 
/* event.coding = MEDDRA  // CTCAE 5.0
* event.coding.version = 20.3
* event.coding.code = MEDDRA#10028813
* event.coding.display = "Nausea"
*/
* event.text = "Nausea"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 // "Mild Adverse Event"
* actuality = #actual
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#ongoing  // resolved on 6/10/20 after 3 more visits - goes to grade 3 then back to 1 then WNL
* date = "2020-05-25"
* recorder = Reference(Practitioner/PractitionerExample1)
* study = Reference(clinical-trial-example-compass)
* suspectEntity[0].instance = Reference(medication-example-kadcyla)
* suspectEntity[0].causality[0].assessment = NCIT#C53258
* suspectEntity[0].causality[0].assessment.text = "Adverse Event Possibly Related to Intervention"
* suspectEntity[1].instance = Reference(medication-example-tucatinib)
* suspectEntity[1].causality[0].assessment = NCIT#C53259
* suspectEntity[1].causality[0].assessment.text = "Adverse Event Probably Related to Intervention"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2021-01-21"