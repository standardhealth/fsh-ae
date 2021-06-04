Alias: $workflow-codes = http://example.org/fhir/CodeSystem/workflow-codes
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $loinc = http://loinc.org
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

// removed the O&O representation of a bundle and just kept the DiagnosticReport
/*
Instance: cbc-202-persona2
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://example.org/fhir/DiagnosticReport/202"
* entry[=].resource = Inline-Instance-for-202-1
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-1"
* entry[=].resource = r202-1
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-2"
* entry[=].resource = r202-2
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-3"
* entry[=].resource = r202-3
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-4"
* entry[=].resource = r202-4
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-5"
* entry[=].resource = r202-5
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-6"
* entry[=].resource = r202-6
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-7"
* entry[=].resource = r202-7
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-8"
* entry[=].resource = r202-8
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-9"
* entry[=].resource = r202-9
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-10"
* entry[=].resource = r202-10
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-11"
* entry[=].resource = r202-11
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-12"
* entry[=].resource = r202-12
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-13"
* entry[=].resource = r202-13
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-14"
* entry[=].resource = r202-14
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-15"
* entry[=].resource = r202-15
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-16"
* entry[=].resource = r202-16
* entry[+].fullUrl = "http://example.org/fhir/Observation/r202-17"
* entry[=].resource = r202-17
*/

// Instance: Inline-Instance-for-202-1
Instance: diagnosticreport-cbc-202-1-persona2
InstanceOf: DiagnosticReport
// Usage: #inline
* id = "202"
* meta.tag = $workflow-codes#01 "Needs Review"
* identifier.system = "http://acme.com/lab/reports"
* identifier.value = "5234342"
* status = #final
* category = $v2-0074#HM
* code.coding[0] = $loinc#58410-2 "CBC panel - Blood by Automated count"
// * code.coding[+] = #CBC "MASTER FULL BLOOD COUNT"
* code.text = "Complete Blood Count"
* subject = Reference(Patient/PatientPersona2)
// * encounter = Reference(Encounter/example)
* effectiveDateTime = "2020-12-29T08:30:00+11:00"
* issued = "2020-12-29T11:45:33+11:00"
// * performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* result[0] = Reference(r202-1)
* result[+] = Reference(r202-2)
* result[+] = Reference(r202-3)
* result[+] = Reference(r202-4)
* result[+] = Reference(r202-5)
* result[+] = Reference(r202-6)
* result[+] = Reference(r202-7)
* result[+] = Reference(r202-8)
* result[+] = Reference(r202-9)
* result[+] = Reference(r202-10)
* result[+] = Reference(r202-11)
* result[+] = Reference(r202-12)
* result[+] = Reference(r202-13)
* result[+] = Reference(r202-14)
* result[+] = Reference(r202-15)
* result[+] = Reference(r202-16)
* result[+] = Reference(r202-17)

Instance: r202-1
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 109 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r202-2
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red Cell Count"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 5.9 '10*12/L' "x10*12/L"
* referenceRange.low = 4.2 '10*12/L' "x10*12/L"
* referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: r202-3
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Haematocrit"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity.value = 50
* valueQuantity.unit = "%"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low.value = 38
* referenceRange.low.unit = "%"
* referenceRange.high.value = 52
* referenceRange.high.unit = "%"

Instance: r202-4
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#787-2 "MCV [Entitic volume] by Automated count"
* code.text = "Mean Cell Volume"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 95 'fL' "fL"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low = 80 'fL' "fL"
* referenceRange.high = 98 'fL' "fL"

Instance: r202-5
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#785-6 "MCH [Entitic mass] by Automated count"
* code.text = "Mean Cell Hemoglobin"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 33 'pg' "pg"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low = 27 'pg' "pg"
* referenceRange.high = 35 'pg' "pg"

Instance: r202-6
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelet Count"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 439 '10*9/L' "x10*9/L"
* referenceRange.low = 150 '10*9/L' "x10*9/L"
* referenceRange.high = 450 '10*9/L' "x10*9/L"

Instance: r202-7
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "White Cell Count"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 4.6 '10*9/L' "x10*9/L"
* referenceRange.low = 4 '10*9/L' "x10*9/L"
* referenceRange.high = 11 '10*9/L' "x10*9/L"

Instance: r202-8
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#770-8 "Neutrophils/100 leukocytes in Blood by Automated count"
* code.text = "Neutrophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 33 '%' "%"

Instance: r202-9
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* code.text = "Neutrophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 3.3 '10*9/L' "x10*9/L"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low = 2 '10*9/L' "x10*9/L"
* referenceRange.high = 7.5 '10*9/L' "x10*9/L"

Instance: r202-10
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#736-9 "Lymphocytes/100 leukocytes in Blood by Automated count"
* code.text = "Lymphocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r202-11
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* code.text = "Lymphocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 1.9 '10*9/L' "x10*9/L"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low = 1.1 '10*9/L' "x10*9/L"
* referenceRange.high = 4 '10*9/L' "x10*9/L"

Instance: r202-12
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#5905-5 "Monocytes/100 leukocytes in Blood by Automated count"
* code.text = "Monocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r202-13
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#742-7 "Monocytes [#/volume] in Blood by Automated count"
* code.text = "Monocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.9 '10*9/L' "x10*9/L"
* referenceRange.low = 0.2 '10*9/L' "x10*9/L"
* referenceRange.high = 1 '10*9/L' "x10*9/L"

Instance: r202-14
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#713-8 "Eosinophils/100 leukocytes in Blood by Automated count"
* code.text = "Eosinophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r202-15
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#711-2 "Eosinophils [#/volume] in Blood by Automated count"
* code.text = "Eosinophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.32 '10*9/L' "x10*9/L"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low = 0.04 '10*9/L' "x10*9/L"
* referenceRange.high = 0.4 '10*9/L' "x10*9/L"

Instance: r202-16
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#706-2 "Basophils/100 leukocytes in Blood by Automated count"
* code.text = "Basophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r202-17
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#704-7 "Basophils [#/volume] in Blood by Automated count"
* code.text = "Basophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.92 '10*9/L' "x10*9/L"
* referenceRange.high = 0.21 '10*9/L' "x10*9/L"