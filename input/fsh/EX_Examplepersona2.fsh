// Example for Patient Persona #2 - Capturing adverse events in a standard of care regimen.


Instance: ae-bundle-persona-2
InstanceOf: AEPatientBundle
Usage: #example
Description: "Extended AdverseEvent example as a Patient Bundle"
* entry[0].resource = PatientPersona2
* entry[0].fullUrl = "http://example.org/PatientPersona2"
* entry[ctcAdverseEvent].resource = ctc-adverse-event-anemia1-persona-2
* entry[ctcAdverseEvent].fullUrl = "http://example.org/ctc-adverse-event-anemia1-persona-2"
* entry[+].resource = primary-cancer-condition-persona-2
* entry[=].fullUrl = "http://example.org/primary-cancer-condition-persona-2"
* entry[+].resource = cancer-related-medication-request-doxorubicin-persona-2
* entry[=].fullUrl = "http://example.org/cancer-related-medication-request-doxorubicin-persona-2"
* entry[+].resource = cancer-related-medication-administration-doxorubicin-persona-2
* entry[=].fullUrl = "http://example.org/cancer-related-medication-administration-doxorubicin-persona-2"
* entry[+].resource = diagnosticreport-cbc-201-1-persona2
* entry[=].fullUrl = "http://example.org/diagnosticreport-cbc-201-1-persona2"
* entry[+].resource = diagnosticreport-cbc-202-1-persona2
* entry[=].fullUrl = "http://example.org/diagnosticreport-cbc-202-1-persona2"
// * entry[+].resource = clinical-trial-example-soc
// * entry[=].fullUrl = "http://example.org/clinical-trial-example-soc"

Instance: PatientPersona2
InstanceOf: mCodeCancerPatient
Description: "Example for Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "C."
* name.given[0] = "Marsha"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "999-999-9999"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "marsha.c@example.com"
* gender = #female
* birthDate = "1955-02-20"
* address.line = "456 Smith Lane"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"


Instance: ctc-adverse-event-anemia1-persona-2
InstanceOf: CTCAdverseEvent
Description: "Anemia grade 2"
* subject = Reference(Patient/PatientPersona2)
* event = MEDDRA#10002272  "Anemia"
* event.coding.version = "20.0"
* event.text = "Hgb 9.0 per CBC results from 12/21/20"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#2 "Moderate Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(cancer-related-medication-administration-doxorubicin-persona-2)
* suspectEntity[0].causality[0].productRelatedness = "probable"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-12-21"

Instance: ctc-adverse-event-neutropenia1-persona-2
InstanceOf: CTCAdverseEvent
Description: "Neutropenia grade 3"
* subject = Reference(Patient/PatientPersona2)
* event = MEDDRA#10016288  "Neutropenia"  // note that neutropenia is NOT in CTCAE 5.0
* event.coding.version = "20.0"
* event.text = "neutropenia 0.7 per CBC results from 12/21/20"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#3 "Severe Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(cancer-related-medication-administration-doxorubicin-persona-2)
* suspectEntity[0].causality[0].productRelatedness = "probable"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-12-21"

Instance: ctc-adverse-event-nausea1-persona-2
InstanceOf: CTCAdverseEvent
Description: "Nausea grade 1"
* subject = Reference(Patient/PatientPersona2)
* event = MEDDRA#110028813  "Nausea" 
* event.coding.version = "20.0"
* event.text = "patient reported experiencing nausea on 12/21/20"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 "Mild Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(cancer-related-medication-administration-doxorubicin-persona-2)
* suspectEntity[0].causality[0].productRelatedness = "probable"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-12-21"


Instance: ctc-adverse-event-anemia2-persona-2
InstanceOf: CTCAdverseEvent
Description: "Anemia grade 1"
* subject = Reference(Patient/PatientPersona2)
* event = MEDDRA#10002272  "Anemia"
* event.coding.version = "20.0"
* event.text = "Anemia improved with Hgb increase to 10.9 per CBC results from 12/29/20"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#1 "Mild Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(cancer-related-medication-administration-doxorubicin-persona-2) // is the entity related to the improvement to medication on-hold?
* suspectEntity[0].causality[0].productRelatedness = "probable" // if grade is 0 (absent) do we still need this field?
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-12-29"


Instance: ctc-adverse-event-neutropenia2-persona-2
InstanceOf: CTCAdverseEvent
Description: "Neutropenia grade 0"
* subject = Reference(Patient/PatientPersona2)
* event = MEDDRA#10016288  "Neutropenia"  // note that neutropenia is NOT in CTCAE 5.0
* event.coding.version = "20.0"
* event.text = "neutropenia resolved per CBC results from 12/29/20"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#0 "Absent Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(cancer-related-medication-administration-doxorubicin-persona-2)
* suspectEntity[0].causality[0].productRelatedness = "probable"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-12-29"

Instance: primary-cancer-condition-persona-2
InstanceOf: PrimaryCancerCondition
Description: "Extended example: example showing primary cancer condition"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#373395001 "Invasive ductal carcinoma with an extensive intraductal component (morphologic abnormality)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(PatientPersona2)
* onsetDateTime = "2020-09-25"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* stage.summary = AJCC#3C
// * stage.assessment = Reference(tnm-clinical-stage-group-jenny-m)

Instance: cancer-related-medication-request-doxorubicin-persona-2
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3639 "DOXOrubicin"
* subject = Reference(PatientPersona2)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-persona-2)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2020-10-06"
* dosageInstruction.text = "doxorubicin (60 mg/m² IV)"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 60 'mg/m2' "mg/m2"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: cancer-related-medication-administration-doxorubicin-persona-2
InstanceOf: CancerRelatedMedicationAdministration
Description: "chemotherapy medication administered"
* status = #completed "completed"
* category = MedReqCat#outpatient
* medicationCodeableConcept = RXN#1790099 "doxorubicin hydrochloride 20 MG per 10 ML Injection"
* subject = Reference(PatientPersona2)
* reasonReference = Reference(primary-cancer-condition-persona-2)
* request = Reference(cancer-related-medication-request-doxorubicin-persona-2)
* effectiveDateTime = "2020-12-01"
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2020-12-01"
* note.text = "doxorubicin (60 mg/m² IV), 105.96 mg in 50 ml 0.9% normal saline administered by continuous infusion. Patient tolerated infusion without side effects."
* dosage.dose = 105.96 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"

// following AEs, chemotherapy was temporarily paused and antiemetic prescribed to treat symptoms.
Instance: cancer-related-medication-request-doxorubicin2-persona-2
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #on-hold "on-hold"  // order was put on-hold.
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3639 "DOXOrubicin"
* subject = Reference(PatientPersona2)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-persona-2)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2020-10-25"
* authoredOn = "2020-12-21"
* dosageInstruction.text = "doxorubicin (60 mg/m² IV)"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 60 'mg/m2' "mg/m2"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: clinical-trial-example-soc
InstanceOf: ResearchStudy
Description: "Standard of Care Protocol 0U812"
* title = "Standard of Care Protocol 0U812" 
* status =  http://hl7.org/fhir/research-study-status#active "Active"