### FHIR Examples

This section provides some examples how the adverse event elements may be represented in a FHIR instance which conforms to this implementation guide.

* **Patient**: <a href="Patient-PatientExample1.html">PatientExample1</a> and <a href="Patient-PatientExample2.html">PatientExample2</a>  shows patient demographics like name and address.

#### Additional Notes

* The narrative rendering of the FHIR examples may not exactly match the wording or order of the structured portion of the FHIR examples. This is on purpose since it is allowed for an implementation to present the data in a way that is understandable to the end user so long as the meaning and context of the structured and coded content is preserved.
* The narrative rendering might also contain data not explicitly appearing in the structured section of the FHIR example.  In this case, rather than including contained resources, our example assumes this content is generated implicitly by the backend application retrieving and parsing data from the FHIR references included in the structured section of the example.
* The FHIR examples conform to the HL7 FHIR Argonaut IG where applicable and is subject to change with subsequent releases.

### Scenario 1: clinical trials patient

In addition to the examples provided above, we also have developed this scenario describing a hypothetical patient, along with accompanying example instances to demonstrate how the adverse event profiles can be used to guide the creation resources representing a clinically realistic scenario. Example resources supporting the AE profiles in this IG will align with [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources as needed.

#### Patient description

Patient M is a 55 year old non-Hispanic white female ...TBD.

