Instance: ctc-adverse-event-example-1
InstanceOf: CTCAdverseEvent
Description: "Grade 2 dehydration attributed to gefitinib"
* contained[0] = medication-example-1
* subject = Reference(Patient/PatientExample1)
* event = MEDDRA#10012174  "Dehydration"
* event.text = "DHN IV given"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#2 "Moderate Adverse Event"
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* date = "2020-05-20"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(medication-example-1)
* suspectEntity[0].causality[0].productRelatedness = "probable"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-05-21"

Instance: ctc-adverse-event-example-2
InstanceOf: CTCAdverseEvent
Description: "Non-occurrence of anemia"
* subject = Reference(Patient/PatientExample1)
* event = NCIT#C143283  "Anemia"
* event.text = "AIHA NGTD"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#0 "Absent Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)

Instance: medication-example-1
InstanceOf: Medication
Description: "Gefitinib 250 MG Oral Tablet"
Usage: #inline
* code = RXN#349472 "gefitinib 250 MG Oral Tablet"
