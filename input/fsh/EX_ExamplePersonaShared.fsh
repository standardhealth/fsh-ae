// Supporting resources that can be shared across multiple example personas.

Instance: us-core-practitioner-owen-oncologist
InstanceOf: USCorePractitioner
Description: "Extended example: example practitioner"
* identifier[NPI].value = "9988776655"
* name.family = "Oncologist"
* name.given[0] = "Owen"
* name.prefix[0] = "Dr."
* address.use = #work
* address.line[0] = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #male
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD
* qualification.code.coding[0].version = "2.7"

Instance: us-core-practitioner-nancy-oncology-nurse
InstanceOf: USCorePractitioner
Description: "Extended example: example RN practitioner"
* identifier[NPI].value = "55667788"
* name.family = "Nurse"
* name.given[0] = "Nancy"
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

Instance: us-core-organization-physician-services-inc
InstanceOf: USCoreOrganization
Description: "Extended example: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "Physician Services, Inc."
* telecom.system = #phone
* telecom.value = "999-999-9999"
* telecom.use = #work
* address.line = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"

Instance: us-core-organization-acme-laboratory
InstanceOf: USCoreOrganization
Description: "Extended example: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "Acme Laboratory, Inc."
* telecom.system = #phone
* telecom.value = "999-999-9999"
* telecom.use = #work
* address.line = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"