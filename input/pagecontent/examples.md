### Adverse Event Examples

This section provides some examples how the adverse event elements may be represented in a FHIR instances which conforms to this implementation guide as well as the mCODE FHIR IG, STU2 release.

The personas below describe hypothetical patients, along with accompanying example instances to demonstrate how the adverse event profiles can be used to guide the creation resources representing a clinically realistic scenario. 

Both scenarios below are similar in its goal of identifying the most relevant AE elements and ensuring alignment with mCODE. They differ sligthly in its purpose: 

#### Patient Persona #1: Clinical Trials
The [first patient persona](examplepersona1.html) is presented in the context of a clinical trial.

* **Patient**: <a href="Patient-patient-example-kaitlyn-b.html">Patient Example Kaitlyn B</a> shows patient demographics like name and address.

#### Patient Persona #2: Standard of Care 
The [second patient persona](examplepersona2.html) is presented in the context of a cancer patient undergoing a standard of care chemotherapy regimen. 


#### Additional Notes

* Example resources supporting the AE profiles in this IG will align with [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources as needed.


* The narrative rendering of the FHIR examples may not exactly match the wording or order of the structured portion of the FHIR examples. This is on purpose since it is allowed for an implementation to present the data in a way that is understandable to the end user so long as the meaning and context of the structured and coded content is preserved.
* The narrative rendering might also contain data not explicitly appearing in the structured section of the FHIR example.  In this case, rather than including contained resources, our example assumes this content is generated implicitly by the backend application retrieving and parsing data from the FHIR references included in the structured section of the example.
* The FHIR examples conform to the HL7 FHIR Argonaut IG where applicable and is subject to change with subsequent releases.


