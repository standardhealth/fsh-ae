Profile: AEPatientBundle
Parent: mCodePatientBundle
Id: ae-patient-bundle
Title: "AdverseEvent Patient Bundle"
Description: "A collection of data for a patient and includes adverse events."
* type  = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"

* insert BundleEntry(ctcAdverseEvent, 0, *, AdverseEvent, The adverse event whose data is included with the bundle., CTCAdverseEvent)

* timestamp and entry and entry.resource MS