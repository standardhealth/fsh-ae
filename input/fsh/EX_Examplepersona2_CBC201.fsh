Alias: $workflow-codes = http://example.org/fhir/CodeSystem/workflow-codes
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $loinc = http://loinc.org
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

// removed the O&O representation of a bundle and just kept the DiagnosticReport
/*
Instance: cbc-201-persona2
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://example.org/fhir/DiagnosticReport/201"
* entry[=].resource = Inline-Instance-for-201-1
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-1"
* entry[=].resource = r201-1
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-2"
* entry[=].resource = r201-2
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-3"
* entry[=].resource = r201-3
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-4"
* entry[=].resource = r201-4
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-5"
* entry[=].resource = r201-5
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-6"
* entry[=].resource = r201-6
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-7"
* entry[=].resource = r201-7
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-8"
* entry[=].resource = r201-8
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-9"
* entry[=].resource = r201-9
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-10"
* entry[=].resource = r201-10
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-11"
* entry[=].resource = r201-11
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-12"
* entry[=].resource = r201-12
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-13"
* entry[=].resource = r201-13
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-14"
* entry[=].resource = r201-14
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-15"
* entry[=].resource = r201-15
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-16"
* entry[=].resource = r201-16
* entry[+].fullUrl = "http://example.org/fhir/Observation/r201-17"
* entry[=].resource = r201-17
*/

// Instance: Inline-Instance-for-201-1
Instance: diagnosticreport-cbc-201-1-persona2
InstanceOf: DiagnosticReport
// Usage: #inline
* id = "201"
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
* effectiveDateTime = "2020-12-21T08:30:00+11:00"
* issued = "2020-12-21T11:45:33+11:00"
// * performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* result[0] = Reference(r201-1)
* result[+] = Reference(r201-2)
* result[+] = Reference(r201-3)
* result[+] = Reference(r201-4)
* result[+] = Reference(r201-5)
* result[+] = Reference(r201-6)
* result[+] = Reference(r201-7)
* result[+] = Reference(r201-8)
* result[+] = Reference(r201-9)
* result[+] = Reference(r201-10)
* result[+] = Reference(r201-11)
* result[+] = Reference(r201-12)
* result[+] = Reference(r201-13)
* result[+] = Reference(r201-14)
* result[+] = Reference(r201-15)
* result[+] = Reference(r201-16)
* result[+] = Reference(r201-17)

Instance: r201-1
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 90 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r201-2
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

Instance: r201-3
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* code.text = "Haematocrit"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity.value = 55
* valueQuantity.unit = "%"
* interpretation = $v3-ObservationInterpretation#H
* referenceRange.low.value = 38
* referenceRange.low.unit = "%"
* referenceRange.high.value = 52
* referenceRange.high.unit = "%"

Instance: r201-4
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#787-2 "MCV [Entitic volume] by Automated count"
* code.text = "Mean Cell Volume"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 99 'fL' "fL"
* interpretation = $v3-ObservationInterpretation#H
* referenceRange.low = 80 'fL' "fL"
* referenceRange.high = 98 'fL' "fL"

Instance: r201-5
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#785-6 "MCH [Entitic mass] by Automated count"
* code.text = "Mean Cell Hemoglobin"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 36 'pg' "pg"
* interpretation = $v3-ObservationInterpretation#H
* referenceRange.low = 27 'pg' "pg"
* referenceRange.high = 35 'pg' "pg"

Instance: r201-6
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.text = "Platelet Count"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 444 '10*9/L' "x10*9/L"
* referenceRange.low = 150 '10*9/L' "x10*9/L"
* referenceRange.high = 450 '10*9/L' "x10*9/L"

Instance: r201-7
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

Instance: r201-8
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#770-8 "Neutrophils/100 leukocytes in Blood by Automated count"
* code.text = "Neutrophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r201-9
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* code.text = "Neutrophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.7 '10*9/L' "x10*9/L"
* interpretation = $v3-ObservationInterpretation#LL
* referenceRange.low = 2 '10*9/L' "x10*9/L"
* referenceRange.high = 7.5 '10*9/L' "x10*9/L"

Instance: r201-10
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#736-9 "Lymphocytes/100 leukocytes in Blood by Automated count"
* code.text = "Lymphocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r201-11
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* code.text = "Lymphocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.9 '10*9/L' "x10*9/L"
* interpretation = $v3-ObservationInterpretation#L
* referenceRange.low = 1.1 '10*9/L' "x10*9/L"
* referenceRange.high = 4 '10*9/L' "x10*9/L"

Instance: r201-12
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#5905-5 "Monocytes/100 leukocytes in Blood by Automated count"
* code.text = "Monocytes"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r201-13
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

Instance: r201-14
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#713-8 "Eosinophils/100 leukocytes in Blood by Automated count"
* code.text = "Eosinophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r201-15
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#711-2 "Eosinophils [#/volume] in Blood by Automated count"
* code.text = "Eosinophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.92 '10*9/L' "x10*9/L"
* interpretation = $v3-ObservationInterpretation#HH
* referenceRange.low = 0.04 '10*9/L' "x10*9/L"
* referenceRange.high = 0.4 '10*9/L' "x10*9/L"

Instance: r201-16
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#706-2 "Basophils/100 leukocytes in Blood by Automated count"
* code.text = "Basophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 20 '%' "%"

Instance: r201-17
InstanceOf: Observation
// Usage: #inline
* status = #final
* code = $loinc#704-7 "Basophils [#/volume] in Blood by Automated count"
* code.text = "Basophils"
* subject = Reference(Patient/PatientPersona2)
* performer = Reference(Organization/us-core-organization-acme-laboratory) "Acme Laboratory, Inc"
* valueQuantity = 0.92 '10*9/L' "x10*9/L"
* referenceRange.high = 0.21 '10*9/L' "x10*9/L"