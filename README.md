# SHR™: Standard Health Record

![Standard Health Record (SHR)](shr-logo.png)

SHR™ (short for Standard Health Record) is an initiative intended to assemble a core set of structured data elements for electronic health records.

The **Standard Health Record (SHR) Adverse Events Implementation Guide (IG)** is a work-in-progress specification, primarily driven by the CodeX ICAREdata and FDA sponsored project to demonstrate the use of mCODE in the reporting of adverse events using the [Common Terminology Criteria for Adverse Events (CTCAE)](https://ctep.cancer.gov/protocoldevelopment/electronic_applications/ctc.htm).

## Key folders & files in the IG

- The FHIR Shorthand (`.fsh`) files defining the resources in this IG are found in `input/fsh/`.
    - There is a [FSH syntax highlighting extension](https://marketplace.visualstudio.com/items?itemName=kmahalingam.vscode-language-fsh) for [VSCode](https://code.visualstudio.com). The mCODE team generally uses this set of tools for working on FSH files.
    - The FSH files are prefixed based on what is contained inside.

        | Prefix | Description          |
        | ------ | -------------------- |
        | `AL`   | Aliases              |
        | `DEF`  | Other Definitions    |
        | `EX`   | Examples             |
        | `SD`   | StructureDefinitions |
        | `VS`   | ValueSets            |

- The main pages in the built IG are generated from [Markdown](https://daringfireball.net/projects/markdown/) found in `input/pagecontent/`. These pages must also be included in `sushi-config.yaml` to be compiled to HTML by the IG Publisher.
- The source for the UML diagrams in the IG are found in `input/images-source/` and MUST have a `.plantuml` extension. These are automatically converted to SVG by the IG Publisher, and are inserted inline into Markdown files using `{%include some-diagram.svg%}` (which corresponds to `input/images-source/some-diagram.plantuml`).

## Contributing to the IG

See [`contributing.md`](contributing.md).