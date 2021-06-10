### Implementation Notes

This page contains miscellaneous information on modeling and FHIR implementation. The content is primarily directed at informaticists and implementers of the following adverse reporting methods:
* CTEP Clinical Trial Monitoring Service (CTMS)
* CTEP Clinical Data Update Service (CDUS)

The following topics are addressed:

* [Understanding this Guide](#understanding-this-guide)
* [Adverse Event Artifacts](#adverse-event-artifacts)
* [Representing Adverse Event Grades](#representing-adverse-event-grades)
* [Terminology Preferences](#terminology-preferences)
* [Representing Provenance](#representing-provenance)

#### Understanding this Guide

The SHR Adverse Event Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html).

Each profile is shown in multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide.

The data elements identified in this process were modeled using [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/) and [SUSHI](https://github.com/FHIR/sushi) and exported as FHIR Profiles. [The profiles](artifacts.html#2), related FHIR artifacts, and other [technical implementation information](implementation.html), constitute the bulk of this IG. 

#### Adverse Event Artifacts

This is a set of experimental profiles for representing adverse events (AE). The definitions are FHIR interpretation of Common Terminology Criteria (CTC). The profiles and value sets and are intended to give minimal and sufficient information for CTCAE reporting.

| Type       | Name                            | Description                    | Example             |
| ---------- | ------------------------------- | -----------------------------  | ------------------- |
| Bundle     | [AEPatientBundle]               | Bundles the contents of an adverse Event in the context of mCODE  | [Persona1 AE Bundle], [Persona2 AE Bundle] |
| Profile    | [CTCAdverseEvent]               | Records an AE                  | [Example 1], [Example 2] |
| Extension  | [CTCAEGrade]                    | Records the CTC Grade          | [Example 1], [Example 2] |
| Extension  | [AdverseEventExpectation]       | Whether event was expected     | [Example 1]        |
| Extension  | [AdverseEventResolvedDate]      | Date when the AE ends          | [Example 1]        |
| CodeSystem | [CTCAEGradeCS]                  | Defines CTC Grades             | n/a                |
| ValueSet   | [CTCAEGradeVS]                  | Values for CTC Grade           | n/a                |
| ValueSet   | [AdverseEventSeriousnessVS]     | Values for seriousness         | n/a                |
| ValueSet   | [AdverseEventExpectationVS]     | Values for expectation         | n/a                |
| ValueSet   | [CTCAETermVS]                   | CTCAE terms for AE             | n/a                |
| ValueSet   | [AdverseEventRelatednessVS]     | Likelihood that AE is related to intervention | n/a |


[AEPatientBundle]: StructureDefinition-ae-patient-bundle.html
[Persona1 AE Bundle]: Bundle-ae-bundle-kaitlyn-compass-trial.html
[Persona2 AE Bundle]: Bundle-ae-bundle-persona-2.html
[CTCAdverseEvent]: StructureDefinition-ctc-adverse-event.html
[CTCAEGrade]: StructureDefinition-ctcae-grade.html
[AdverseEventExpectation]: StructureDefinition-adverse-event-expectation.html
[AdverseEventResolvedDate]: StructureDefinition-adverse-event-resolved-date.html
[CTCAEGradeCS]: CodeSystem-ctcae-grade-code-system.html
[CTCAEGradeVS]: ValueSet-ctcae-grade-value-set.html
[AdverseEventSeriousnessVS]: ValueSet-adverse-event-seriousness-value-set.html
[AdverseEventExpectationVS]: ValueSet-adverse-event-expectation-value-set.html
[CTCAETermVS]: ValueSet-ctcae-term-value-set.html
[AdverseEventRelatednessVS]: ValueSet-adverse-event-relatedness-value-set.html
[Example 1]: AdverseEvent-ctc-adverse-event-example-1.html
[Example 2]: AdverseEvent-ctc-adverse-event-example-2.html

#### AE Messaging Flow

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include ae-icsr-exchange.svg%}</div>
<p></p>
<p></p>

#### Representing Adverse Event Terms and Grades

Adverse events are represented as two concepts:
* **CTCAE term** - The adverse event observed.
* **CTCAE grade** - A level of severity for the noted CTC adverse event.

MedDRA is the preferred terminology for specifying the **CTCAE term**. NCI CTCAE 5.0 contains a cross-walk between assigned NCI Thesaurus (NCIT) codes and MedDRA lower level terms if there is need to support NCIT instead.

For simplicity and to better align with MedDRA, this IG does not use the NCI assigned concepts for grade and instead creates a local code system and value set, [ctcae-grade-value-set](http://hl7.org/fhir/us/codexae/ValueSet/ctcae-grade-value-set), to generally represent the CTCAE grades that can be applied across all CTCAE terms.

Some clinical workflows require that you assert the absence of a solicited adverse event. The NCI CTCAE 5.0 cross-walk table represents grades ranging from 1 to 5 and CTCAE which ranges from mild to death but does not have a way to assert that a solicited adverse event is absent. This IG specifies an adverse event grade value set with a "grade 0" to represent absence.

#### Terminology Preferences

This implementation guide supplies terminology bindings drawn primarily from LOINC for "observables", and SNOMED-CT for values, results and findings. When appropriate codes are not available in the preferred vocabulary, alternative vocabularies are used, in the following order of preference: SNOMED-CT (if the element is an observable), NCI Thesaurus, NCI Metathesaurus, and local codes.

Value sets from the FHIR specification and US Core were reused to the extent possible. New value sets where created only when no known existing value sets were deemed to be fit for purpose.

Relevant CTEP codes and values are listed [here](https://ctep.cancer.gov/protocoldevelopment/codes_values.htm).

The CTCAE Adverse Event reporting is based on CTCAE 5.0 and corresponds to MedDRA version 20.1. The CTCAE terms for the CTCAETermVS defined in this IG includes the codes for the NCI Preferred Terms and the MedDRA LLT (Lowest Level Terms) that map to the CTCAE terms as defined in https://evs.nci.nih.gov/ftp1/CTCAE/CTCAE_5.0/NCIt_CTCAE_5.0.xlsx.

#### Representing Provenance

Provenance information includes the "who, what, when, where, why" associated with collection, transfer, and updating of clinical information. This IG relies on FHIR's native mechanisms for recording and tracking provenance. As such, this IG shares all the capabilities and limitations of FHIR provenance tracking. The user should refer to the [FHIR specification](https://www.hl7.org/fhir/provenance.html) for more information.
