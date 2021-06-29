<div markdown="1" class="note">
<b>NOTE:</b> This is a _very early and preliminary_ version of the AdverseEvent specification. Please do not submit comments on the IG content at this time.

</div>

<style>
    table.mcode-table, .mcode-table tr, .mcode-table td {
        border: 1px solid #ccc;
        border-collapse: collapse;
    }
</style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd" markdown="1">

* [Background](#background)
* [FHIR Examples](examples.html)
* [Implementation Notes](implementation.html)
* [Disclaimers and Known Limitations](#disclaimers-and-known-limitations)
* [Credits](#credits)
* [Contact Information](#contact-information)

### Background

Adverse event (AE) reporting is necessary to document any unfavorable and unintended sign, symptom or disease that occurs in a patient who is undergoing a medical treatment or procedure. The Common Terminology Criteria for Adverse Events (CTCAE) are a set of criteria for the standardized classification of adverse effects of drugs used in cancer therapy. The CTCAE 5.0 terminology will be used for this Implementation Guide. CTCAE are a set of criteria for the standardized classification of adverse effects of drugs used in cancer therapy. Each CTCAE term is mapped to a Medical Dictionary for Regulatory Activities (MedDRA) term and code, and many clinical trials encode their observations based on the CTCAE system. 

The collection of adverse events differs across institutions and there are separate workflows for the capture of adverse events in clinical trials depending on the role. Clinical trial coordinators oftentimes abstract or transcribe relevant elements for trials reporting. In many cases, this results in duplicative efforts in a form that is not easily exchangeable.

It is currently not possible to assess treatment-associated adverse events reliably using electronic health record (EHR) data. Advantages of properly structured EHR data include creating a single data input system, which maximizes efficiency, reduces cost, and eliminates errors associated with double data entry and transcriptions from one data collection system to another.

The CTC Adverse Event is a minimal common oncology data elements (mCODE) compatible structured data model to support embedding CTCAE reporting within the EHR.

### Adverse Event Landscape Survey

The information obtained from subject matter experts, pre-existing standards, nomenclatures, and guidelines were consulted in the development of this specification, including:

* [Cancer Therapy Evaluation Program (CTEP) Adverse Event Reporting System (CTEP-AERS)](https://ctep.cancer.gov/protocolDevelopment/electronic_applications/adverse_events.htm)
* [FDA Adverse Event Reporting System (FAERS)](https://open.fda.gov/data/faers/)
* [Health and Human Services (HHS) Vaccine Adverse Event Reporting System (VAERS)](https://vaers.hhs.gov/)
* [Common Terminology Criteria for Adverse Events (CTCAE) 5.0](https://ctep.cancer.gov/protocoldevelopment/electronic_applications/docs/CTCAE_v6_Solicitation_Brief_Overview.pdf)
* [Clinical Trials Monitoring Service (CTMS) Rave User Guide](https://www.theradex.com/downloads/CTMS%20Rave%20User%20Guide%20Version%201.pdf)

#### Adverse Event Reporting Standards

Other reporting standards informing the adverse event work:
* FDA Individual Case Safety Report (ICSR)
* National Cancer Institute (NCI) CTCAE:
  * CTEP reporting via CTMS and Clinical Data Update System (CDUS)
  * CTEP-AERS

#### HL7 Adverse Event Efforts

Several projects related to Adverse Event reporting are underway at HL7, including:
* FHIR AdverseEvent core resource maintained by the HL7 Patient Care Working Group
* [HL7 FHIR Implementation Guide: Profiles for ICSR Transfusion and Vaccination Adverse Event Detection and Reporting](https://build.fhir.org/ig/HL7/fhir-icsr-ae-reporting/branches/main/index.html)
* [HL7 FHIR to CDISC Joint Mapping Implementation Guide](http://hl7.org/fhir/uv/cdisc-mapping/2021JAN/index.html)

We recognize the need to have a more cohesive effort to create an overarching and collaborative FHIR model that could represent these use cases. While collaborative discussions are underway, this IG distinguishes itself in several ways:
* A focus on meeting NCI CTEP adverse event reporting requirements.
* The narrow scoping for oncology-specific clinical trials, especially in support for mCODE compatible AE reporting.


### Actors, Systems, and Use Case Scenarios

#### Actors

There are multiple actors recognized in this IG including:

* **Provider** - the healthcare providers, or their representatives, who works to evaluate patients undergoing a clinical trial.
* **Clinical Research Coordinators and Principal Investigators** - Includes roles such as reporter, submitter (oftentimes the same person as the reporter), and treating physician. Other contacts identified by the submitter are optional.
* **Patient** - the patient who is suspected to have, or is undergoing a treatment and may be subject to adverse events resulting from that treatment.
* **Application** - EHR systems.

#### Systems

One use case currently driving this IG is the Integrating Clinical Trials and Real-world Endpoints data (ICAREdata) initiative sponsored by the Alliance for Clinical Trials in Oncology. It aims to overcome the challenges of using the EHR as a method of collecting high quality clinical trials data by developing data structures and data collection methods that accurately report clinical trials data while effectively addressing provider burden. The approach to testing ICAREdata methods will also be used for adverse event reporting. The ICAREdata Adverse Event Reporting use case will test this mCODE-compatible structured data model for the CTCAE.

The ICAREdata pilot environment is likely representative of multiple environments seeking to better integrate adverse event data captured from an electronic health record (EHR) with that of a dedicated reporting system for reporting adverse events to a monitoring organization like CTEP. 

The systems considered in this IG include:

* **Electronic Case Report Forms (eCRFs)** - Used by Clinical Trial principal investigators and sponsors for reporting adverse event to clinical trial monitoring organizations. The relevant fields in a CRF could reside in a dedicated 3rd party clinical trials CRF application like Medidata Rave, or as a customized module or form within an Electronic Health Record (EHR).
* **Adverse Event Monitoring applications** - Used by monitoring organizations like the FDA or NCI CTEP for receiving trials related updates, including the reporting of adverse events discovered throughout the trial.

The diagram below shows one example where several Alliance for Clinical Trials (ACT) sites could use one or more forms used for the capture of adverse events.

<div style="text-align: center;">
<img src="CTEP-CTReporting-SystemsDiagram.png" alt="CTEP Reporting" width="600" height="400" />
</div>

#### Clinical Use Cases

The following use cases will inform the initial design for this IG:

* **Use Case 1**: A clinical research coordinator or principal investigator submits an electronic Case Report Form for clinical trial patient receiving a treatment and experiences one or more adverse events (AE).

* **Use Case 2**: A patient experiences an adverse event during or after the administration a given drug, vaccine, or biological product (e.g.: drug transfusion). The provider records the adverse event per healthcare organization patient safety policies.

### Disclaimers and Known Limitations

This implementation guide (IG) is a Domain of Knowledge IG. The purpose of this IG is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

* This IG focus is narrowly scoped to only _the adverse reporting section_ and directly relevant relationships of an adverse event.  It does not attempt to model all of the metadata found in a Case Report Form (CRF) or the entire format of the entire trials report conformant with the NCI Clinical Trials Monitoring Service (CTMS). 
* This IG focuses on CTCAE terms as the reference for AE terms and grades. MedDRA, while recognized, is scoped to only those MedDRA lower-level terms (LLT) for which there is a CTCAE 5.0 mapping.
* References to mCODE artifacts, where applicable, are to [mCODE v1.16.0 FHIR IG (STU2)](https://hl7.org/fhir/us/mcode/2021May/).
* CTCAE 6.0, currently in early draft development, is out of scope.
* The following standards, while noted, will not be the focus of this IG version: CTEP Adverse Event Reporting System (AdEERS), and CDISC adverse event reporting in CDASH and SDTM.

### Credits

The authors recognize the leadership and sponsorship of Dr. Monica Bertagnolli and Dr. Jay Schnitzer, MITRE Chief Technology Officer. Dr. Steven Piantadosi and the Alliance for Clinical Trials in Oncology coordinated real-world data collection in clinical trials, as part of this project. Lead MITRE contributors were Mark Kramer, Ph.D, and May Terry, RN. Andre Quina and Dr. Brian Anderson guide the overall mCODE and CodeX efforts at MITRE. 

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information


| **Co-Editor:**         | Michelle Casagni<br>MITRE Corporation<br>[mcasagni@mitre.org]  |
| **Co-Editor:**         | Mark Kramer<br>MITRE Corporation<br>[mkramer@mitre.org]          |
| **Co-Editor:**         | May Terry<br>MITRE Corporation<br>[mayt@mitre.org] |

[mcasagni@mitre.org]: mailto:mcasagni@mitre.org
[mkramer@mitre.org]: mailto:mkramer@mitre.org
[mayt@mitre.org]: mailto:mayt@mitre.org

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

</div>

{% include markdown-link-references.md %}