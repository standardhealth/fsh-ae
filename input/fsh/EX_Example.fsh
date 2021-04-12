/*
Instance: PatientExample1
InstanceOf: Patient
Description: "Example for Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "john.anyperson@example.com"
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: PatientExample2
InstanceOf: Patient
Description: "Example for Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "Anyperson"
* name.given[0] = "Marsha"
* name.given[1] = "C."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "999-999-9999"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "marsha.anyperson@example.com"
* gender = #female
* birthDate = "1955-02-20"
* address.line = "456 Smith Lane"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
*/

Instance: OrganizationExample1
InstanceOf: USCoreOrganization
Description: "Example for Organization"
* identifier[NPI].value = "1265714091"
* active = true
* name = "Foundation Medicine"
* contact.telecom.system = #phone
* contact.telecom.value = "617-418-2200"
* address.line = "150 Second Street"
* address.city = "Cambridge"
* address.state = "MA"
* address.postalCode = "02141"
* address.country = "USA"

Instance: PractitionerExample1
InstanceOf: USCorePractitioner
Description: "Example for Practitioner"
* identifier[NPI].value = "9988776655"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"

