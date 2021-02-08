### Implementation Notes

This page contains miscellaneous information on modeling and FHIR implementation. The content is primarily directed at informaticists and implementers of the following adverse reporting methods:
* CTEP CDUS
* CTEP AdEERS
* CDISC adverse event reporting in CDASH and SDTM.

The following topics are addressed:

* [Understanding this Guide](#understanding-this-guide)
* [Adverse Event](#Adverse-Event)
* [Terminology Preferences](#terminology-preferences)
* [Representing Provenance](#representing-provenance)

#### Understanding this Guide

The SHR Adverse Event Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html).

Each profile is shown in multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide.

The data elements identified in this process were modeled using [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/) and [SUSHI](https://github.com/FHIR/sushi) and exported as FHIR Profiles. [The profiles](artifacts.html#2), related FHIR artifacts, and other [technical implementation information](implementation.html), constitute the bulk of this IG. 

### Adverse Event

This is a set of experimental profiles for representing adverse events (AE). The definitions are FHIR interpretation of Common Terminology Criteria (CTC). The profiles and value sets and are intended to give sufficient information for FDA reporting.

| Type       | Name                            | Description                    | Example             |
| ---------- | ------------------------------- | -----------------------------  | ------------------- |
| Profile    | [CTCAdverseEvent]               | Records an AE                  | [Example 1], [Example 2] |
| Extension  | [CTCAEGrade]                    | Records the CTC Grade          | [Example 1], [Example 2] |
| Extension  | [AdverseEventExpectation]       | Whether event was expected     | [Example 1]        |
| Extension  | [AdverseEventResolvedDate]      | Date when the AE ends          | [Example 1]        |
| CodeSystem | [CTCAEGradeCS]                  | Defines CTC Grades             | n/a                |
| ValueSet   | [CTCAEGradeVS]                  | Values for CTC Grade           | n/a                |
| ValueSet   | [AdverseEventSeriousnessVS]     | Values for seriousness         | n/a                |
| ValueSet   | [AdverseEventExpectationVS]     | Values for expectation         | n/a                |
| ValueSet   | [CTCAEPreferredTermVS]          | CTCAE preferred terms for AE   | n/a                |
| ValueSet   | [AdverseEventRelatednessVS]     | Likelihood that AE is related to intervention | n/a |

[CTCAdverseEvent]: StructureDefinition-ctc-adverse-event.html
[CTCAEGrade]: StructureDefinition-ctcae-grade.html
[AdverseEventExpectation]: StructureDefinition-adverse-event-expectation.html
[AdverseEventResolvedDate]: StructureDefinition-adverse-event-resolved-date.html
[CTCAEGradeCS]: CodeSystem-ctcae-grade-code-system.html
[CTCAEGradeVS]: ValueSet-ctcae-grade-value-set.html
[AdverseEventSeriousnessVS]: ValueSet-adverse-event-seriousness-value-set.html
[AdverseEventExpectationVS]: ValueSet-adverse-event-expectation-value-set.html
[CTCAEPreferredTermVS]: ValueSet-ctcae-preferred-term-value-set.html
[AdverseEventRelatednessVS]: ValueSet-adverse-event-relatedness-value-set.html
[Example 1]: AdverseEvent-ctc-adverse-event-example-1.html
[Example 2]: AdverseEvent-ctc-adverse-event-example-2.html


#### Terminology Preferences

This implementation guide supplies terminology bindings drawn primarily from LOINC for "observables", and SNOMED-CT for values, results and findings. When appropriate codes are not available in the preferred vocabulary, alternative vocabularies are used, in the following order of preference: SNOMED-CT (if the element is an observable), NCI Thesaurus, NCI Metathesaurus, and local codes.

Value sets from the FHIR specification and US Core were reused to the extent possible. New value sets where created only when no known existing value sets were deemed to be fit for purpose.

Relevant CTEP codes and values are listed [here](https://ctep.cancer.gov/protocoldevelopment/codes_values.htm).

#### Representing Provenance

Provenance information includes the "who, what, when, where, why" associated with collection, transfer, and updating of clinical information. This IG relies on FHIR's native mechanisms for recording and tracking provenance. As such, this IG shares all the capabilities and limitations of FHIR provenance tracking. The user should refer to the [FHIR specification](https://www.hl7.org/fhir/provenance.html) for more information.
