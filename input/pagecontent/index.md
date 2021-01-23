<style>
    table.mcode-table, .mcode-table tr, .mcode-table td {
        border: 1px solid #ccc;
        border-collapse: collapse;
    }
</style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd" markdown="1">

* [Background](#background)
* [Scope and Conceptual Model](#scope-and-conceptual-model)
* [FHIR Examples](examples.html)
* [Implementation Notes](implementation.html)
* [Disclaimers and Known Limitations](#disclaimers-and-known-limitations)
* [Credits](#credits)
* [Contact Information](#contact-information)

### Background


Use cases that drove the initial clinical data requirements for this IG:

* **Use Case 1**: TBD Link
* **Use Case 2**: TBD Link

In addition to information obtained from subject matter experts, several pre-existing standards, nomenclatures, and guidelines were consulted in the development of this specification, including:

* [CTEP-AERS: Cancer Therapy Evaluation Program Adverse Event Reporting System](https://ctep.cancer.gov/protocolDevelopment/electronic_applications/adverse_events.htm)
* [FDA Adverse Event Reporting System (FAERS)](https://open.fda.gov/data/faers/)
* [HL7 FHIR Implementation Guide: Profiles for ICSR Transfusion and Vaccination Adverse Event Detection and Reporting](https://build.fhir.org/ig/HL7/fhir-icsr-ae-reporting/branches/main/index.html)
* [Health and Human Services (HHS) Vaccine Adverse Event Reporting System (VAERS)](https://vaers.hhs.gov/)

After initial development, in early 2019, an open survey was conducted to validate and prioritize the data elements from these use cases. Further down-scoping was done based on whether the data would be stored or capture in an electronic health record (EHR), and if it would place undue documentation burden on clinicians.

The data elements identified in this process were modeled using [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/) and [SUSHI](https://github.com/FHIR/sushi) and exported as FHIR Profiles. [The profiles](artifacts.html#2), related FHIR artifacts, and other [technical implementation information](implementation.html), constitute the bulk of this IG. What follows is an overview of mCODE, directed primarily at clinical readers. Readers should also take note of the [Data Dictionary (Excel download)](mCODEDataDictionary.xlsx), a simplified, flattened list of mCODE elements.

Currently, there are two defined mCODE roles involving the exchange of mCODE data. However, this may change in the future. The first role is the "mCODE Data Sender". This participant provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses. The second mCODE data exchange role is the "mCODE Data Receiver". This participant accepts mCODE data from an mCODE Data Sender.

There are multiple actors recognized in this IG including:

* **Provider** - the healthcare providers, or their representatives, who works to evaluate patients undergoing a clinical trial.
* **Sponsors and Principal Investigators** - TBD
* **Patient** - the patient who is suspected to have, or is undergoing a treatment and may be subject to adverse events resulting from that treatment.
* **Application** - EHR systems.

This implementation guide is a Domain of Knowledge IG. The purpose of this IG is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

### Scope and Conceptual Model

The SHR Adverse Event model consists of data elements divided into TBD groups, illustrated in the following diagram:

** INSERT CONCEPTUAL DIAGRAM LINK **


### Disclaimers and Known Limitations

TBD

### Credits

The authors recognize the leadership and sponsorship of Dr. Monica Bertagnolli and Dr. Jay Schnitzer, MITRE Chief Technology Officer. Dr. Steven Piantadosi and the Alliance for Clinical Trials in Oncology coordinated real-world data collection in clinical trials, as part of this project. Lead MITRE contributors were Mark Kramer, May Terry, and Max Masnick. Andre Quina and Dr. Brian Anderson guide the overall mCODE effort at MITRE. 

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information


| **Co-Editor:**         | May Terry<br>MITRE Corporation<br>[mayt@mitre.org] |
| **Co-Editor:**         | Mark Kramer<br>MITRE Corporation<br>[mkramer@mitre.org]          |

[mayt@mitre.org]: mailto:mayt@mitre.org
[mkramer@mitre.org]: mailto:mkramer@mitre.org

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

</div>

{% include markdown-link-references.md %}