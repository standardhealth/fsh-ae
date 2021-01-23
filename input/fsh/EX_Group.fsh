Instance: PatientGroupExample1
InstanceOf: Group
Usage: #example
Title: "Patient Group Example"
Description: "Example of a Group identifying Patients"
* type = #person
* actual = true

* code = #mcode-patient

* member[0].entity = Reference(Patient/PatientExample1)
* member[1].entity = Reference(Patient/PatientExample2)