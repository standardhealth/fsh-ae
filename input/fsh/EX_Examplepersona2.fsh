// Example for Patient Persona #2 - Capturing adverse events in a standard of care regimen.


Instance: ae-bundle-persona-2
InstanceOf: AEPatientBundle
Description: "Extended AdverseEvent example as a Patient Bundle"
* entry[0].resource = PatientPersona2
* entry[0].fullUrl = "http://example.org/PatientPersona2"
* entry[CTCAdverseEvent].resource = ctc-adverse-event-anemia-persona-2
* entry[CTCAdverseEvent].fullUrl = "http://example.org/ctc-adverse-event-anemia-persona-2"



Instance: PatientPersona2
InstanceOf: mCodeCancerPatient
Description: "Example for Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "c"
* name.given[0] = "Marsha"
* name.given[1] = "C."
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


Instance: ctc-adverse-event-anemia-persona-2
InstanceOf: CTCAdverseEvent
Description: "Anemia grade 2"
* subject = Reference(Patient/PatientPersona2)
* event = MEDDRA#10002272  "Anemia"
* event.coding.version = "20.0"
* event.text = "Hgb 9.0 per CBC results from 12/21/20"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#2 "Moderate Adverse Event"
* recorder = Reference(Practitioner/PractitionerExample1)
* suspectEntity[0].instance = Reference(medication-doxorubicin-persona-2)
* suspectEntity[0].causality[0].productRelatedness = "probable"
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-12-21"

Instance: medication-doxorubicin-persona-2
InstanceOf: Medication
Description: "DOXOrubicin"
// Usage: #inline
* code = RXN#3639 "DOXOrubicin"
