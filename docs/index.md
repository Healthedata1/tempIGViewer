# 2026 US Quality Core Implementation Guide - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* **2026 US Quality Core Implementation Guide**

## 2026 US Quality Core Implementation Guide

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/ImplementationGuide/fhir.onc.us-quality-core | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:USQualityCore |

# Disclaimer:

 This Implementation Guide (IG) is not an update to health IT certification criteria or processes regulated by the Office of the National Coordinator for Health Information Technology (ONC). Readers should monitor final rules provided by programs such as the Centers for Medicare & Medicaid Services (CMS) and/or ONC for information on official updates to the health IT certification process and measure submission requirements for quality programs. 

### Summary

The US Quality Core Implementation Guide provides guidance for implementing [USCDI+ Quality](https://uscdiplus.healthit.gov/uscdiplus) in FHIR to support consistent, interoperable representation and exchange of quality data for quality measurement and reporting programs. It defines profiles that derive from and extend the base [FHIR version R4](http://hl7.org/fhir/R4/index.html) resources and [US Core](https://hl7.org/fhir/us/core/STU6.1/) profiles to provide a common foundation for implementing, sharing, and evaluating quality-related knowledge artifacts across quality improvement efforts. It also defines basic system capability expectations for exchanging data to support digital quality measurement and reporting over standard FHIR interfaces.

### Background

This guide reflects a coordinated federal effort to enable standardized FHIR-based exchange of data for digital quality measurement and reporting. [ONC](http://www.healthit.gov/newsroom/about-onc) has established the [USCDI+ Quality data element list](https://uscdiplus.healthit.gov/uscdiplus?id=uscdi_record&table=x_g_sshh_uscdi_domain&sys_id=7ddf78228745b95098e5edb90cbb3525&view=sp) as a common, reusable foundation that can support quality measurement across programs and settings over time, with a transparent process for proposing and considering additional data elements in future versions. This guide specifies how to represent and exchange the USCDI+ Quality data elements as needed to support digital quality measurement and reporting programs, including [electronic clinical quality measures (eCQMs)](https://ecqi.healthit.gov/glossary/electronic-clinical-quality-measure-ecqm) used in certain CMS quality reporting programs, as well as providing guidance on additional data elements used in other quality reporting programs. For more detail on USCDI+ Quality and its scope, see the [USCDI+ Quality](uscdiquality.md) page in this guide.

This guide descends directly from the [Quality Improvement Core (QI-Core) Implementation Guide](https://hl7.org/fhir/us/qicore/STU6/), which aligns with the standards adopted for the ONC Health IT Certification Program, including FHIR, US Core, and USCDI. The initial version of this guide targets [USCDI+ Quality V1](https://uscdiplus.healthit.gov/uscdiplus?id=uscdi_record&table=x_g_sshh_uscdi_sub_domain&sys_id=07ff90701b72f25049edc957624bcbf8&view=sp) data elements. It is based on the [QI-Core Implementation Guide v6.0.0](https://hl7.org/fhir/us/qicore/STU6/) (QI-Core 6.0.0), which aligns with the [US Core Implementation Guide v6.1.0](https://hl7.org/fhir/us/core/STU6.1/) (US Core 6.1.0) and [USCDI v3.1](https://isp.healthit.gov/united-states-core-data-interoperability-uscdi#uscdi-v3-1).[1](#fn:1)

This guide extends QI-Core by providing USCDI+ Quality guidance within profiles through the use of flags for [USCDI+ Quality relevant elements](uscdiquality.md). It also introduces [CapabilityStatements](capability-statements.md) that define specific expectations for actors exchanging US Quality Core data over standard RESTful FHIR interfaces. The technical content in this initial version of US Quality Core is intended to be backward compatible with QI-Core 6.0.0. Details of the specific changes made from QI-Core 6.0.0 are provided in the [Change Log](changes.md).

**US Quality Core defines how to represent and exchange USCDI+ Quality data elements in FHIR, building on the US Core Implementation Guide and USCDI.**

### How to read this Guide

This guide is divided into several pages, which are listed at the top of each page in the menu bar.

* [Home](index.md): Overview of US Quality Core, including its background and scope
* [Conformance](conformance.md): The set of rules to claim conformance to this implementation guide 
* [General Requirements](general-requirements.md): Requirements common to all profiles used in this guide
* [Must Support](must-support.md): Expectations for Must Support and USCDI+ Quality flagged elements
* [Security](security.md): General security requirements
 
* [Guidance](guidance.md): Best practices and how to use the profiles defined in this guide 
* [USCDI+ Quality](uscdiquality.md): Description of the relationship between USCDI+ Quality and US Quality Core, including profile mappings and conformance scope
* [US Quality Core Negation](negation.md): Guidance on using US Quality Core negation profiles
* [Provenance](provenance.md): Description of the use of Provenance in US Quality Core
* [Relationship with US Core and QI-Core](relationship-with-uscore-qicore.md): Relationship between US Quality Core with US Core and QI-Core
* [QDM-to-US Quality Core Mapping](qdm-to-us-quality-core.md): Mapping from the Quality Data Model (QDM) to US Quality Core
 
* [FHIR Artifacts](artifacts.md): Detailed descriptions and formal definitions for all the FHIR artifacts defined in this guide 
* [Capability Statements](capability-statements.md): Expected FHIR capabilities of the US Quality Core Servers and Clients
* [Profiles](profiles.md): All profiles defined in or used by US Quality Core
* [Extensions](extensions.md): Extensions defined as part of US Quality Core
* [Terminology](terminology.md): US Quality Core ValueSets and Code Systems defined for the profiles
* [Examples](examples.md): Examples used in this guide
 
* [CQL Artifacts and Patterns (Informational)](cql-artifacts.md): The US Quality Core model information (ModelInfo) and document patterns for use with US Quality Core. This content is informational and is not part of the conformance requirements of this guide. 
* [US Quality Core ModelInfo](modelinfo.md): US Quality Core model information to support implementation using Clinical Quality Language (CQL)
* [US Quality Core Patterns](patterns.md): Patterns of usage for US Quality Core applications.
 
* [Downloads](downloads.md): Downloadable artifacts
* [Change Log](changes.md): Change Log that lists changes from QI-Core 6.0.0 to this guide.

### Scope

The US Quality Core IG provides requirements and guidance for using FHIR to implement the USCDI+ Quality data elements. The scope of the conformance expectations of this version of the guide is limited to the representation and exchange of data described in USCDI+ Quality V1. Note that not all USCDI+ Quality V1 data elements are in scope for this version's conformance requirements. See the [In-Scope USCDI+ Quality Data Elements](uscdiquality.md#in-scope-uscdi-quality-v1-data-elements) section for a complete list of the USCDI+ Quality V1 data elements that are in scope for the conformance requirements of this guide.

The scope of this guide is limited to the published content of [QI-Core 6.0.0](https://hl7.org/fhir/us/qicore/STU6/) and [US Core 6.1.0](https://hl7.org/fhir/us/core/STU6.1/).

USCDI+ Quality V1 data elements that are not readily represented in the profiles provided by QI-Core 6.0.0 or US Core 6.1.0 are outside the scope of this version of the guide. Implementers are encouraged to provide feedback for inclusion in future versions of this guide.

This guide retains all artifacts provided by QI-Core 6.0.0, with limited alterations described below, to support the adoption by existing QI-Core implementers. The US Quality Core profiles adhere to a naming convention that uses the prefix "US Quality Core". For example, the US Quality Core profile of Patient is named US Quality Core Patient.

These limited FHIR artifact changes made in this guide include:

* Updated the prefix of FHIR profile names from QI-Core to US Quality Core.
* Updated logical id of the resources from 'qicore' to 'us-quality-core'.
* Reintroduced the Present on Admission extension for Encounter.diagnosis.
* Removed 'QI-Core' flags on FHIR elements. This guide uses 'USCDI+ Quality' flags to indicate which elements must be supported to meet [USCDI+ Quality conformance requirements](general-requirements.md#summary-of-conformance-requirements). 
* In cases where a 'QI-Core' flagged FHIR element within a QI-Core 6.0.0 profile does not map to a USCDI+ Quality data element, the FHIR element is not flagged and is therefore not part of the conformance requirements of this guide.
 

Note that the informational ModelInfo file that supports implementations using CQL has been updated to reflect the changes made to US Quality Core. See [CQL Artifacts and Patterns (Informational)](cql-artifacts.md) for details; this content is not part of the conformance requirements of this guide.

### Acknowledgements

Content in this initial version of the US Quality Core is primarily based on the QI-Core 6.0.0, as managed by the [HL7 Clinical Quality Information Workgroup](http://www.hl7.org/Special/committees/cqi/index.cfm) and the supporting Quality Improvement (QI) community.

-------

Footnotes:

1. Consistent with Executive Order 14168 the Sex, Sexual Orientation, and Gender Identity, data elements have been removed or updated in the Patient Demographics/Information Data Class. [↩](#fnref:1)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "fhir.onc.us-quality-core",
  "url" : "http://fhir.org/guides/onc/us-quality-core/ImplementationGuide/fhir.onc.us-quality-core",
  "version" : "0.5.0",
  "name" : "USQualityCore",
  "title" : "2026 US Quality Core Implementation Guide",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-05",
  "publisher" : "Office of the National Coordinator for Health Information Technology (ONC)",
  "contact" : [{
    "name" : "Office of the National Coordinator for Health Information Technology (ONC)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.healthit.gov/feedback"
    }]
  }],
  "description" : "The USQualityCore Implementation Guide defines a set of FHIR profiles with extensions and bindings needed to create interoperable, quality-focused applications. The profiles in this implementation guide derive from and extend the [US Core](http://hl7.org/fhir/us/core) profiles to provide a common foundation for building, sharing, and evaluating knowledge artifacts across quality improvement efforts in the US Realm.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "packageId" : "fhir.onc.us-quality-core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "uscore",
    "uri" : "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core",
    "packageId" : "hl7.fhir.us.core",
    "version" : "6.1.0"
  },
  {
    "id" : "uscore8",
    "uri" : "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core",
    "packageId" : "hl7.fhir.us.core",
    "version" : "8.0.1"
  },
  {
    "id" : "dicom",
    "uri" : "http://fhir.org/packages/fhir.dicom/ImplementationGuide/fhir.dicom",
    "packageId" : "fhir.dicom",
    "version" : "2024.1.20240120"
  },
  {
    "id" : "terminology",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "cqluv",
    "uri" : "http://hl7.org/fhir/uv/cql/ImplementationGuide/hl7.fhir.uv.cql",
    "packageId" : "hl7.fhir.uv.cql",
    "version" : "2.0.0"
  },
  {
    "id" : "cqlus",
    "uri" : "http://hl7.org/fhir/us/cql/ImplementationGuide/hl7.fhir.us.cql",
    "packageId" : "hl7.fhir.us.cql",
    "version" : "2.0.0-ballot"
  }],
  "global" : [{
    "type" : "Patient",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient"
  },
  {
    "type" : "Encounter",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-encounter"
  },
  {
    "type" : "Practitioner",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-practitioner"
  },
  {
    "type" : "PractitionerRole",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-practitionerrole"
  },
  {
    "type" : "Immunization",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunization"
  },
  {
    "type" : "Observation",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
  },
  {
    "type" : "Organization",
    "profile" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-organization"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "templates\\liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-binary"
      },
      {
        "url" : "value",
        "valueString" : "input/cql"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "exp-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "generate"
      },
      {
        "url" : "value",
        "valueString" : "xml"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "generate"
      },
      {
        "url" : "value",
        "valueString" : "JSON"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/onc/us-quality-core/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "templates\\liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-binary"
      },
      {
        "url" : "value",
        "valueString" : "input/cql"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "exp-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "generate"
      },
      {
        "url" : "value",
        "valueString" : "xml"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "generate"
      },
      {
        "url" : "value",
        "valueString" : "JSON"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.org/guides/onc/us-quality-core/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-example.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/example"
      },
      "name" : "AdverseEvent example",
      "description" : "Example of an allergic reaction adverse event",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-adverseevent"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-example.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/example"
      },
      "name" : "AllergyIntolerance example",
      "description" : "Example of a clinical assessment record of an allergy",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-example-refuted.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/example-refuted"
      },
      "name" : "AllergyIntolerance refuted example",
      "description" : "Example of a clinical assessment record of an allergy that has been refuted",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "BodyStructure-example.html"
      }],
      "reference" : {
        "reference" : "BodyStructure/example"
      },
      "name" : "BodyStructure example",
      "description" : "Example of a BodyStructure resource to identify a mass in the spleen",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-bodystructure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/example"
      },
      "name" : "CarePlan example",
      "description" : "Example of an assessment and care plan for a pregnancy",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-careplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-example.html"
      }],
      "reference" : {
        "reference" : "CareTeam/example"
      },
      "name" : "CareTeam example",
      "description" : "Example of a CareTeam involved in the delivery of care for a pregnancy",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-careteam"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-example.html"
      }],
      "reference" : {
        "reference" : "Claim/example"
      },
      "name" : "Claim example",
      "description" : "Example of a vision claim",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-claim"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-example.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/example"
      },
      "name" : "ClaimResponse example",
      "description" : "Example of a vision claim response",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-claimresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Communication-example.html"
      }],
      "reference" : {
        "reference" : "Communication/example"
      },
      "name" : "Communication example",
      "description" : "Example of a notification sent to a patient about an abnormal test result",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-communication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Communication-negation-example.html"
      }],
      "reference" : {
        "reference" : "Communication/negation-example"
      },
      "name" : "Communication negation example",
      "description" : "Example of a notification that failed to be sent to a patient and reason why",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-communicationnotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CommunicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CommunicationRequest-example.html"
      }],
      "reference" : {
        "reference" : "CommunicationRequest/example"
      },
      "name" : "CommunicationRequest example",
      "description" : "Example of a record of request to provide additional information for a claim",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-communicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-example.html"
      }],
      "reference" : {
        "reference" : "Condition/example"
      },
      "name" : "Condition Encounter Diagnosis example",
      "description" : "Example of a condition encounter diagnosis resource used to record information about a burn of the left ear",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-condition-encounter-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-health-concern-example.html"
      }],
      "reference" : {
        "reference" : "Condition/health-concern-example"
      },
      "name" : "Condition Problems Health Concerns example",
      "description" : "Example of a patient with a condition encounter health concern regarding obesity",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-condition-problems-health-concerns"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-appendicitis-example.html"
      }],
      "reference" : {
        "reference" : "Condition/appendicitis-example"
      },
      "name" : "Condition example - appendicitis",
      "description" : "Example of a condition resource used to record information about an appendicitis",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-condition-encounter-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Coverage-example.html"
      }],
      "reference" : {
        "reference" : "Coverage/example"
      },
      "name" : "Coverage example",
      "description" : "Example of a coverage resource used to provide information about an individual's specific plan",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-coverage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-example.html"
      }],
      "reference" : {
        "reference" : "Device/example"
      },
      "name" : "Device example",
      "description" : "Device example for an ECG",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-device"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DeviceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DeviceRequest-example.html"
      }],
      "reference" : {
        "reference" : "DeviceRequest/example"
      },
      "name" : "DeviceRequest example",
      "description" : "Request to employ a medical device",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-devicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DeviceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DeviceRequest-negation-example.html"
      }],
      "reference" : {
        "reference" : "DeviceRequest/negation-example"
      },
      "name" : "DeviceRequest negation example",
      "description" : "Example of a request to employ a medical device that was not performed",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-devicenotrequested"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DeviceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DeviceRequest-negation-with-code-example.html"
      }],
      "reference" : {
        "reference" : "DeviceRequest/negation-with-code-example"
      },
      "name" : "DeviceRequest negation with code example",
      "description" : "Example of a request to employ a medical device that was not performed",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-devicenotrequested"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DeviceUseStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DeviceUseStatement-example.html"
      }],
      "reference" : {
        "reference" : "DeviceUseStatement/example"
      },
      "name" : "DeviceUseStatement example",
      "description" : "Example of a record of device use by a patient",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-deviceusestatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-example.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/example"
      },
      "name" : "DiagnosticReportLab example",
      "description" : "Example of the findings and interpretation of a laboratory diagnostic test",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-diagnosticreport-lab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-note-example.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/note-example"
      },
      "name" : "DiagnosticReportNote example",
      "description" : "Example of a DiagnosticReport Note",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-diagnosticreport-note"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example.html"
      }],
      "reference" : {
        "reference" : "Encounter/example"
      },
      "name" : "Encounter example",
      "description" : "Example of an Encounter",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "FamilyMemberHistory"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "FamilyMemberHistory-example.html"
      }],
      "reference" : {
        "reference" : "FamilyMemberHistory/example"
      },
      "name" : "FamilyMemberHistory example",
      "description" : "Example of Family Member History for a patient",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-familymemberhistory"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Flag"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Flag-example.html"
      }],
      "reference" : {
        "reference" : "Flag/example"
      },
      "name" : "Flag example",
      "description" : "Warning/Notification when providing care example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-flag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Goal"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Goal-example.html"
      }],
      "reference" : {
        "reference" : "Goal/example"
      },
      "name" : "Goal example",
      "description" : "Example of weight loss goal/objective for a patient",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-goal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-example.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/example"
      },
      "name" : "ImagingStudy example",
      "description" : "Example of ImagingStudy based on CT imaging study",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-imagingstudy"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-example.html"
      }],
      "reference" : {
        "reference" : "Immunization/example"
      },
      "name" : "Immunization example",
      "description" : "Immunization example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-statusreason-example.html"
      }],
      "reference" : {
        "reference" : "Immunization/statusreason-example"
      },
      "name" : "Entered-in-error Influenza immunization record example",
      "description" : "Example of an entered-in-error influenza immunization record with statusReason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-negation-example.html"
      }],
      "reference" : {
        "reference" : "Immunization/negation-example"
      },
      "name" : "Immunization negation example",
      "description" : "Example of immunization that was refused/failed to be administered using value set",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunizationnotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-negation-example-code.html"
      }],
      "reference" : {
        "reference" : "Immunization/negation-example-code"
      },
      "name" : "Immunization negation with code example",
      "description" : "Example of immunization that was refused/failed to be administered using code",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunizationnotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationEvaluation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationEvaluation-example.html"
      }],
      "reference" : {
        "reference" : "ImmunizationEvaluation/example"
      },
      "name" : "ImmunizationEvaluaion example",
      "description" : "Example of ImmunizationEvaluation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunizationevaluation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImmunizationRecommendation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImmunizationRecommendation-example.html"
      }],
      "reference" : {
        "reference" : "ImmunizationRecommendation/example"
      },
      "name" : "ImmunizationRecommendation example",
      "description" : "Example of ImmunizationRecommendation for Hepatitis A vaccine",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunizationrecommendation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-example.html"
      }],
      "reference" : {
        "reference" : "Location/example"
      },
      "name" : "Location example",
      "description" : "Example of Location of a provider - south wing of Mean Joe Greene University Medical Center",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Medication-example.html"
      }],
      "reference" : {
        "reference" : "Medication/example"
      },
      "name" : "Medication example",
      "description" : "Example of Alemtuzumab Medication",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-example.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/example"
      },
      "name" : "MedicationAdministration example",
      "description" : "Intravenous example of MedicationAdministration",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationadministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-cmd-example.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/cmd-example"
      },
      "name" : "MedicationAdministration Cumulative Duration example",
      "description" : "Cumulative Medication example of MedicationAdministration",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationadministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-negation-example.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/negation-example"
      },
      "name" : "MedicationAdministration negation example",
      "description" : "Example of medication not administered using a value set to indicate what was not administered",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationadministrationnotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-negation-with-code-example.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/negation-with-code-example"
      },
      "name" : "MedicationAdministration negation with code example",
      "description" : "Example of medication not administered using a code to indicate that a particular medication was not administered",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationadministrationnotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-example.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/example"
      },
      "name" : "MedicationDispense example",
      "description" : "Penicillin MedicationDispense Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationdispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-cmd-example.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/cmd-example"
      },
      "name" : "MedicationDispense cumulative dose example",
      "description" : "Cumulative Medication Dispense Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationdispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-negation-example.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/negation-example"
      },
      "name" : "MedicationDispense negation example",
      "description" : "Example of medication not dispensed using a value set to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationdispensedeclined"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-negation-with-code-example.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/negation-with-code-example"
      },
      "name" : "MedicationDispense negation with code example",
      "description" : "Example of medication not dispensed using a code to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationdispensedeclined"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-cmd-example.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/cmd-example"
      },
      "name" : "MedicationRequest Cumulative Duration",
      "description" : "Cumulative Medication Duration Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-example.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/example"
      },
      "name" : "MedicationRequest example",
      "description" : "Penicillin MedicationRequest Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-patient-reported-example.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/patient-reported-example"
      },
      "name" : "MedicationRequest Patient Reported Example",
      "description" : "Patient Reported Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-patient-requester-example.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/patient-requester-example"
      },
      "name" : "MedicationRequest Patient Requester Example",
      "description" : "Patient Requester Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-practitioner-ordered-example.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/practitioner-ordered-example"
      },
      "name" : "MedicationRequest Practitioner Ordered Example",
      "description" : "Practitioner Ordered Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-negation-example.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/negation-example"
      },
      "name" : "MedicationNotRequested using value set example",
      "description" : "Example of medication not requested using a value set to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationnotrequested"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-negation-example-code.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/negation-example-code"
      },
      "name" : "MedicationNotRequested using code example",
      "description" : "Example of medication not requested using a code to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationnotrequested"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-example.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/example"
      },
      "name" : "MedicationStatment example",
      "description" : "Penicillin MedicationStatement Example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NutritionOrder"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NutritionOrder-example.html"
      }],
      "reference" : {
        "reference" : "NutritionOrder/example"
      },
      "name" : "NutrientOrder example",
      "description" : "Example of NutrientOrder for diabetic diet",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-nutritionorder"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example.html"
      }],
      "reference" : {
        "reference" : "Observation/example"
      },
      "name" : "Observation example",
      "description" : "Example of Decreased Hemoglobin Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-odh.html"
      }],
      "reference" : {
        "reference" : "Observation/example-odh"
      },
      "name" : "ODH Observation example",
      "description" : "Example of occupational data added to observation measure",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-frailty.html"
      }],
      "reference" : {
        "reference" : "Observation/example-frailty"
      },
      "name" : "Frailty observation example",
      "description" : "Example of a frailty observation measure",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-gestation.html"
      }],
      "reference" : {
        "reference" : "Observation/example-gestation"
      },
      "name" : "Gestation age at birth observation example",
      "description" : "Example of a gestation age at birth observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-obstetric-delivery.html"
      }],
      "reference" : {
        "reference" : "Observation/example-obstetric-delivery"
      },
      "name" : "Date and time of obstetric delivery example",
      "description" : "Example of a obstetric delivery datetime Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-delivery-date-estimate.html"
      }],
      "reference" : {
        "reference" : "Observation/example-delivery-date-estimate"
      },
      "name" : "Delivery date estimated example",
      "description" : "Example of a delivery date estimate Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-preterm-births.html"
      }],
      "reference" : {
        "reference" : "Observation/example-preterm-births"
      },
      "name" : "Number of preterm births obeservation example",
      "description" : "Example number of preterm births Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-births.html"
      }],
      "reference" : {
        "reference" : "Observation/example-births"
      },
      "name" : "Number of full-term births obeservation example",
      "description" : "Example number of full-term births Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-parity.html"
      }],
      "reference" : {
        "reference" : "Observation/example-parity"
      },
      "name" : "Number of parity obeservation example",
      "description" : "Example number of parity Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-pregnancies.html"
      }],
      "reference" : {
        "reference" : "Observation/example-pregnancies"
      },
      "name" : "Number of pregnancies obeservation example",
      "description" : "Example number of pregnancies Observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-simple-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-negation-example.html"
      }],
      "reference" : {
        "reference" : "Observation/negation-example"
      },
      "name" : "ObservationCancelled with value set example",
      "description" : "Example of observation not done using a value set to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-observationcancelled"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-negation-with-code-example.html"
      }],
      "reference" : {
        "reference" : "Observation/negation-with-code-example"
      },
      "name" : "ObservationCancelled with code example",
      "description" : "Example of observation not done using a code to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-observationcancelled"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-clinical-result-heart-rate-rhythm.html"
      }],
      "reference" : {
        "reference" : "Observation/clinical-result-heart-rate-rhythm"
      },
      "name" : "Heart rate rhythm clinical result observation example",
      "description" : "Example of a Heart rate rhythm clinical result observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-observation-clinical-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-screening-assessment-10-minute-apgar-heart-rate.html"
      }],
      "reference" : {
        "reference" : "Observation/example-screening-assessment-10-minute-apgar-heart-rate"
      },
      "name" : "10 minute Apgar Heart Rate Observation Screening Assessment Example",
      "description" : "Example of a 10 minute Apgar Heart Rate Observation Screening Assessment",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-observation-screening-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-laboratory-result-observation-example-blood-glucose.html"
      }],
      "reference" : {
        "reference" : "Observation/laboratory-result-observation-example-blood-glucose"
      },
      "name" : "Glucose Laboratory Result Observation Example",
      "description" : "Example of a glucose laboratory result observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-observation-lab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-nonpatient-mechanical-ventilator.html"
      }],
      "reference" : {
        "reference" : "Observation/example-nonpatient-mechanical-ventilator"
      },
      "name" : "Mechanical Ventilator Availability (physical object) Observation Example",
      "description" : "Example of mechanical ventilator availability nonpatient observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-nonpatient-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-nonpatient-hospital-bed.html"
      }],
      "reference" : {
        "reference" : "Observation/example-nonpatient-hospital-bed"
      },
      "name" : "Hospital Bed Availability (physical object) Observation Example",
      "description" : "Example of hospital bed availability nonpatient observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-nonpatient-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-nonpatient-hemodialysis-machine.html"
      }],
      "reference" : {
        "reference" : "Observation/example-nonpatient-hemodialysis-machine"
      },
      "name" : "Hemodialysis Machine Availability (physical object) Observation Example",
      "description" : "Example of hempdialysis machine availability nonpatient observation",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-nonpatient-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-example.html"
      }],
      "reference" : {
        "reference" : "Organization/example"
      },
      "name" : "Organization example",
      "description" : "HL7 Organization example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-example1.html"
      }],
      "reference" : {
        "reference" : "Organization/example1"
      },
      "name" : "Hospital Organization example",
      "description" : "Hendricks County Hospital example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-example.html"
      }],
      "reference" : {
        "reference" : "Patient/example"
      },
      "name" : "Patient example",
      "description" : "Basic Patient example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-example-2.html"
      }],
      "reference" : {
        "reference" : "Patient/example-2"
      },
      "name" : "65+ Female patient example",
      "description" : "65+ Female patient example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-infant-example.html"
      }],
      "reference" : {
        "reference" : "Patient/infant-example"
      },
      "name" : "Infant patient example",
      "description" : "Infant patient example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/example"
      },
      "name" : "Practitioner example",
      "description" : "Referring Practitioner example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-example.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/example"
      },
      "name" : "PractitionerRole example",
      "description" : "PractitionerRole example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-example.html"
      }],
      "reference" : {
        "reference" : "Procedure/example"
      },
      "name" : "Procedure example",
      "description" : "Appendectomy Procedure example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-negation-example.html"
      }],
      "reference" : {
        "reference" : "Procedure/negation-example"
      },
      "name" : "ProcedureNotDone with value set example",
      "description" : "Example of procedure not done using a value set to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-procedurenotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-negation-with-code-example.html"
      }],
      "reference" : {
        "reference" : "Procedure/negation-with-code-example"
      },
      "name" : "ProcedureNotDone with code example",
      "description" : "Example of procedure not done using a code to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-procedurenotdone"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-PHQ-9-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/PHQ-9-example"
      },
      "name" : "PHQ-9 QuestionnaireResponse Example",
      "description" : "Example of a PHQ-9 Questionnaire Response",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/example"
      },
      "name" : "ServiceRequest example",
      "description" : "Request for Appendectomy ServiceRequest example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-servicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-appropriateness-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/appropriateness-example"
      },
      "name" : "ServiceRequest appropriateness example",
      "description" : "ServiceRequest appropriateness example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-servicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-negation-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/negation-example"
      },
      "name" : "ServiceNotRequested with value set example",
      "description" : "Example of service not requested using a value set to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-servicenotrequested"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-negation-example-code.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/negation-example-code"
      },
      "name" : "ServiceNotRequested with code example",
      "description" : "Example of service not requested using a code to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-servicenotrequested"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-myringotomy-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/myringotomy-example"
      },
      "name" : "ServiceRequest Myringotomy Procedure example",
      "description" : "ServiceRequest for Myringotomy Procedure example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-servicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-elective-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/elective-example"
      },
      "name" : "ServiceRequest elective example",
      "description" : "Elective procedure ServiceRequest example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-servicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-example.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/example"
      },
      "name" : "RelatedPerson example",
      "description" : "Emergency contact example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Substance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Substance-example.html"
      }],
      "reference" : {
        "reference" : "Substance/example"
      },
      "name" : "Substance example",
      "description" : "Honey Bee venom (apitoxin) Substance example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-substance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-example.html"
      }],
      "reference" : {
        "reference" : "Task/example"
      },
      "name" : "Task example",
      "description" : "Task example",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-task"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-negation-example.html"
      }],
      "reference" : {
        "reference" : "Task/negation-example"
      },
      "name" : "TaskRejected with value set example",
      "description" : "Example of task not done using a value set to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-taskrejected"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-negation-with-code-example.html"
      }],
      "reference" : {
        "reference" : "Task/negation-with-code-example"
      },
      "name" : "TaskRejected with code example",
      "description" : "Example of task not done using a code to indicate the reason",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-taskrejected"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-encounter-ed-example.html"
      }],
      "reference" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "name" : "Encounter example of emergency visit that escalated into inpatient patient",
      "description" : "Encounter example of emergency visit that escalated into inpatient patient",
      "exampleCanonical" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/manifest"
      },
      "name" : "Input Expansion Parameters",
      "description" : "The input expansion parameters resource for this implementation guide, specifying SNOMED Edition and version. This resource will be contained within the published implementation guide with all pinned references.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-medication-dose-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-medication-dose-type"
      },
      "name" : "USQualityCore SNOMED CT Dosage Codes",
      "description" : "This value set includes all the \"Dosages\" SNOMED CT codes (i.e. codes with an is-a relationship with 277406006: Dosages).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-negation-reason.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-negation-reason"
      },
      "name" : "USQualityCore Negation Reason Codes",
      "description" : "This value set defines the set of codes that can be used to indicate the reason an action was not taken",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-observation-body-position.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-observation-body-position"
      },
      "name" : "US Quality Core Observation Body Position",
      "description" : "SNOMED CT code system values descending from the following:'body position finding' 9851009",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-present-on-admission.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-present-on-admission"
      },
      "name" : "USQualityCore Present On Admission Codes",
      "description" : "Value Set for USQualityCore Present On Admission.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-adverseevent.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-adverseevent"
      },
      "name" : "US Quality Core AdverseEvent",
      "description" : "An adverse event (AE) is an untoward occurrence during treatment that should be reported, for example, to a clinical study sponsor or safety oversight organization.  AEs include reportable serious medical errors such as those defined by National Quality Forum (see http://www.qualityforum.org/Topics/ SREs/List_of_SREs.aspx), and Patient Safety Healthcare Events as defined by AHRQ.  Some AEs can involve conditions such as \"recurring headaches\" but others do not, such as accidental falls, surgical errors, sexual abuse of patient, and sudden death. An adverse event can also be an unsafe condition that increases the probability of a patient safety event, and near-misses. An adverse event can be caused by exposure to some agent (e.g., a medication, immunization, food, or environmental agent). An adverse reaction can range from a mild reaction, such as a harmless rash to a severe and life-threatening condition. They can occur immediately or develop over time. For example, a patient may develop a rash after taking a particular medication."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-allergyintolerance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-allergyintolerance"
      },
      "name" : "US Quality Core AllergyIntolerance",
      "description" : "Profile of AllergyIntolerance for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-bodystructure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-bodystructure"
      },
      "name" : "US Quality Core BodyStructure",
      "description" : "Profile of BodyStructure for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-careplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-careplan"
      },
      "name" : "US Quality Core CarePlan",
      "description" : "The US Quality Core CarePlan is based upon the US Core CarePlan Profile which is based upon the core FHIR CarePlan Resource and created to meet the 2015 Edition Common Clinical Data Set 'Assessment and Plan of Treatment requirements. Defines constraints and extensions on the CarePlan resource for the minimal set of data to query and retrieve a patient's Care Plan."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-careteam.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-careteam"
      },
      "name" : "US Quality Core CareTeam",
      "description" : "Profile of CareTeam for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-claim.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-claim"
      },
      "name" : "US Quality Core Claim",
      "description" : "Profile of Claim for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-claimresponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-claimresponse"
      },
      "name" : "US Quality Core ClaimResponse",
      "description" : "The US Quality Core ClaimResponse profile is used to provide the results of the adjudication and/or authorization of a set of healthcare-related products and services for a patient against the patient's insurance coverages, or to respond with what the adjudication would be for a supplied set of products or services should they be actually supplied to the patient. It identifies the mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the ClaimResponse resource when using this profile"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-communication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-communication"
      },
      "name" : "US Quality Core Communication",
      "description" : "Profile of Communication for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-communicationnotdone.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-communicationnotdone"
      },
      "name" : "US Quality Core Communication Not Done",
      "description" : "Profile of CommunicationNotDone for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-communicationrequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-communicationrequest"
      },
      "name" : "US Quality Core CommunicationRequest",
      "description" : "Profile of CommunicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-condition-encounter-diagnosis.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-condition-encounter-diagnosis"
      },
      "name" : "US Quality Core Condition Encounter Diagnosis",
      "description" : "The US Quality Core Condition Encounter Diagnosis Profile is based upon the US Core Condition Encounter Diagnosis Profile.   In version 5.0.0, The US Quality Core Condition Profile has been split into the US Quality Core Condition Encounter Diagnosis Profile and US Quality Core Condition Problems and Health Concerns Profile. To promote interoperability and adoption through common implementation, this profile defines constraints and extensions on the Condition resource for the minimal set of data to record, search, and fetch information about an encounter diagnosis.  It Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-condition-problems-health-concerns.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-condition-problems-health-concerns"
      },
      "name" : "US Quality Core Condition Problems Health Concerns",
      "description" : "Profile of Condition for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-coverage.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-coverage"
      },
      "name" : "US Quality Core Coverage",
      "description" : "Profile of Coverage for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-device.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-device"
      },
      "name" : "US Quality Core Device",
      "description" : "Profile of Device for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-devicenotrequested.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-devicenotrequested"
      },
      "name" : "US Quality Core Device Not Requested",
      "description" : "Profile of DeviceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-devicerequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-devicerequest"
      },
      "name" : "US Quality Core DeviceRequest",
      "description" : "Profile of DeviceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-deviceusestatement.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-deviceusestatement"
      },
      "name" : "US Quality Core DeviceUseStatement",
      "description" : "Profile of DeviceUseStatement for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-diagnosticreport-lab.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-diagnosticreport-lab"
      },
      "name" : "US Quality Core DiagnosticReport Profile for Laboratory Results Reporting",
      "description" : "Profile of DiagnosticReport for laboratory results for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-diagnosticreport-note.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-diagnosticreport-note"
      },
      "name" : "US Quality Core DiagnosticReport Profile for Report and Note Exchange",
      "description" : "Profile of DiagnosticReport for Note exchange for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-encounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-encounter"
      },
      "name" : "US Quality Core Encounter",
      "description" : "Profile of Encounter for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-familymemberhistory.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-familymemberhistory"
      },
      "name" : "US Quality Core FamilyMemberHistory",
      "description" : "Profile of Family Member History for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-flag.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-flag"
      },
      "name" : "US Quality Core Flag",
      "description" : "Profile of Flag for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-goal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-goal"
      },
      "name" : "US Quality Core Goal",
      "description" : "Profile of Goal for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-imagingstudy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-imagingstudy"
      },
      "name" : "US Quality Core ImagingStudy",
      "description" : "Profile of ImagingStudy for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-immunization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-immunization"
      },
      "name" : "US Quality Core Immunization",
      "description" : "Profile of Immunization for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-immunizationevaluation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-immunizationevaluation"
      },
      "name" : "US Quality Core ImmunizationEvaluation",
      "description" : "Defines constraints and extensions on the ImmunizationEvaluation resource for the minimal set of data to query and retrieve a patient's Immunization Evaluation."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-immunizationnotdone.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-immunizationnotdone"
      },
      "name" : "US Quality Core Immunization Not Done",
      "description" : "Negation profile of Immunization for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-immunizationrecommendation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-immunizationrecommendation"
      },
      "name" : "US Quality Core ImmunizationRecommendation",
      "description" : "Profile of ImmunizationRecommendation for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-location.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-location"
      },
      "name" : "US Quality Core Location",
      "description" : "Profile of Location for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medication"
      },
      "name" : "US Quality Core Medication",
      "description" : "Profile of Medication for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationadministration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationadministration"
      },
      "name" : "US Quality Core MedicationAdministration",
      "description" : "Profile of MedicationAdministration for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationadministrationnotdone.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationadministrationnotdone"
      },
      "name" : "US Quality Core MedicationAdministration Not Done",
      "description" : "Negation profile of MedicationAdministration for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationdispense.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationdispense"
      },
      "name" : "US Quality Core MedicationDispense",
      "description" : "Profile of MedicationDispense for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationdispensedeclined.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationdispensedeclined"
      },
      "name" : "US Quality Core MedicationDispense Declined",
      "description" : "Negation profile of MedicationDispense for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationnotrequested.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationnotrequested"
      },
      "name" : "US Quality Core Medication Not Requested",
      "description" : "Negation profile of MedicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationrequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationrequest"
      },
      "name" : "US Quality Core MedicationRequest",
      "description" : "Profile of MedicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-medicationstatement.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-medicationstatement"
      },
      "name" : "US Quality Core MedicationStatement",
      "description" : "Profile of MedicationStatement for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-nonpatient-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-nonpatient-observation"
      },
      "name" : "US Quality Core NonPatient Observation",
      "description" : "Profile of NonPatient Observation for decision support/quality metrics evaluating resource use and availability rather than focusing on patients. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-nutritionorder.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-nutritionorder"
      },
      "name" : "US Quality Core NutritionOrder",
      "description" : "Defines constraints and extensions on the NutritionOrder resource for the minimal set of data to query and retrieve a patient's Nutrition Order."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-observation-clinical-result.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-observation-clinical-result"
      },
      "name" : "US Quality Core Observation Clinical Result",
      "description" : "The US Quality Core Observation Clinical Result Profile is based upon the US Core Observation Clinical Result Profile. Clinical results includes non-imaging and non-laboratory tests performed on a patient that results in structured or unstructured (narrative) findings specific to the patient, such as electrocardiogram (ECG), visual acuity exam, macular exam, or graded exercise testing (GXT), to facilitate the diagnosis and management of conditions. The US Quality Core Observation Clinical Result Profile profile defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-observation-lab.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-observation-lab"
      },
      "name" : "US Quality Core Laboratory Result Observation",
      "description" : "The US Quality Core Laboratory Result Observation Profile is based upon the US Laboratory Result Observation Resource.  Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-observation-screening-assessment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-observation-screening-assessment"
      },
      "name" : "US Quality Core Observation Screening Assessment",
      "description" : "The US Quality Core Observation Screening Assessment Profile is based upon the US Core Observation Screening Assessment Profile which can be used to represent individual responses, panels of multi-question surveys, and multi-select responses to “check all that apply” questions. The US Quality Core Observation Survey Profile sets minimum expectations for the Observation Resource to record, search, and fetch retrieve observations that represent the questions and responses to form/survey and defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-observationcancelled.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-observationcancelled"
      },
      "name" : "US Quality Core Observation Cancelled",
      "description" : "Profile of ObservationCancelled for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-organization"
      },
      "name" : "US Quality Core Organization",
      "description" : "Profile of Organization for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-patient"
      },
      "name" : "US Quality Core Patient",
      "description" : "Profile of Patient for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-practitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-practitioner"
      },
      "name" : "US Quality Core Practitioner",
      "description" : "Profile of Practitioner for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-practitionerrole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-practitionerrole"
      },
      "name" : "US Quality Core PractitionerRole",
      "description" : "Profile of PractitionerRole for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-procedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-procedure"
      },
      "name" : "US Quality Core Procedure",
      "description" : "Profile of Procedure for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-procedurenotdone.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-procedurenotdone"
      },
      "name" : "US Quality Core Procedure Not Done",
      "description" : "Profile of Procedure for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-questionnaireresponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-questionnaireresponse"
      },
      "name" : "US Quality Core QuestionnaireResponse",
      "description" : "The US Quality Core QuestionnaireResponse Profile is based upon the US Core QuestionnaireResponse Profile and sets minimum expectations for the QuestionnaireResponse resource to record, search, and fetch retrieve captures the responses to form/survey and defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-relatedperson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-relatedperson"
      },
      "name" : "US Quality Core RelatedPerson",
      "description" : "Profile of RelatedPerson for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-servicenotrequested.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-servicenotrequested"
      },
      "name" : "US Quality Core Service Not Requested",
      "description" : "Negation profile of ServiceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-servicerequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-servicerequest"
      },
      "name" : "US Quality Core ServiceRequest",
      "description" : "Profile of ServiceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-simple-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-simple-observation"
      },
      "name" : "US Quality Core Simple Observation",
      "description" : "Profile of Simple Observation for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-substance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-substance"
      },
      "name" : "US Quality Core Substance",
      "description" : "Profile of Substance for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-task.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-task"
      },
      "name" : "US Quality Core Task",
      "description" : "Profile of Task for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-taskrejected.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-taskrejected"
      },
      "name" : "US Quality Core Task Rejected",
      "description" : "Profile of TaskRejected for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-us-quality-core-client.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/us-quality-core-client"
      },
      "name" : "US Quality Core Client CapabilityStatement",
      "description" : "This capability statement describes the expected capabilities of the US Quality\nCore Client which is responsible for initiating queries for USCDI+\nQuality V1 data from US Quality Core Servers.  The set of FHIR RESTful\noperations and search parameters required to be supported by US Quality Core\nServers is provided in the [US Quality Core Server Capability\nStatement](CapabilityStatement-us-quality-core-server.html).  US Quality Core\nClients have the option of choosing from this list to access necessary data\nbased on their local use cases and other contextual requirements."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-us-quality-core-server.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/us-quality-core-server"
      },
      "name" : "US Quality Core Server CapabilityStatement",
      "description" : "This capability statement describes the expected capabilities of the US Quality Core Servers\nwhich is responsible for responding to USCDI+ Quality V1 queries submitted by US Quality Core Clients.\nIt describes a minimum set of FHIR RESTful operations and search parameters necessary to enable access\nto the set of USCDI+ Quality V1 data that is in scope of this implementation guide.  For more information\nabout which USCDI+ Quality data elements are in scope, please review the [USCDI+ Quality](uscdiquality.html) section\nof this implementation guide.\n\nUS Quality Core Servers **SHALL** support the capabilities described in the [US\nCore Server CapabilityStatement\nSTU6.1](https://hl7.org/fhir/us/core/STU6.1/CapabilityStatement-us-core-server.html).\nSome RESTFUL operations and search parameters described in the US Quality Core Server CapabilityStatement are redundant\nto the US Core Server CapabilityStatement, but are listed here to highlight which\ncapabilities are specifically relevant to USCDI+ Quality V1.\n\nThe US Quality Core Implementation Guide v0.5.0 is derived from the QI-Core Implementation Guide STU6. It adopts\nall profiles within the [QI-Core Implementation Guide STU6](https://hl7.org/fhir/us/qicore/STU6/) to enable a more seamless adoption of this\nimplementation guide.  However, only those profiles that contain USCDI+ Quality V1 data are required to be supported\nby US Quality Core Servers.  The FHIR RESTful operations and search parameters in this capability statement\nreflects this scope."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-adverseevent-event.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-adverseevent-event"
      },
      "name" : "UsQualityCoreAdverseeventEvent",
      "description" : "US Quality Core AdverseEvent Event Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-adverseevent-recorded-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-adverseevent-recorded-date"
      },
      "name" : "UsQualityCoreAdverseeventRecordedDate",
      "description" : "US Quality Core AdverseEvent recorded-date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-adverseevent-subject.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-adverseevent-subject"
      },
      "name" : "UsQualityCoreAdverseeventSubject",
      "description" : "US Quality Core AdverseEvent Subject Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-allergyintolerance-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-allergyintolerance-patient"
      },
      "name" : "UsQualityCoreAllergyintolerancePatient",
      "description" : "US Quality Core AllergyIntolerance Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-bodystructure-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-bodystructure-patient"
      },
      "name" : "UsQualityCoreBodystructurePatient",
      "description" : "US Quality Core BodyStructure Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-careplan-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-careplan-category"
      },
      "name" : "UsQualityCoreCareplanCategory",
      "description" : "US Quality Core CarePlan Category Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-careplan-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-careplan-patient"
      },
      "name" : "UsQualityCoreCareplanPatient",
      "description" : "US Quality Core CarePlan Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-careteam-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-careteam-patient"
      },
      "name" : "UsQualityCoreCareteamPatient",
      "description" : "US Quality Core CareTeam Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-careteam-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-careteam-status"
      },
      "name" : "UsQualityCoreCareteamStatus",
      "description" : "US Quality Core CareTeam Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-claim-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-claim-patient"
      },
      "name" : "UsQualityCoreClaimPatient",
      "description" : "US Quality Core Claim Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-claimresponse-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-claimresponse-patient"
      },
      "name" : "UsQualityCoreClaimresponsePatient",
      "description" : "US Quality Core ClaimResponse Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-claimresponse-type.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-claimresponse-type"
      },
      "name" : "UsQualityCoreClaimresponseType",
      "description" : "US Quality Core ClaimResponse Type Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-communication-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-communication-patient"
      },
      "name" : "UsQualityCoreCommunicationPatient",
      "description" : "US Quality Core Communication Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-communication-topic.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-communication-topic"
      },
      "name" : "UsQualityCoreCommunicationTopic",
      "description" : "US Quality Core Communication Topic Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-communicationrequest-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-communicationrequest-category"
      },
      "name" : "UsQualityCoreCommunicationrequestCategory",
      "description" : "US Quality Core CommunicationRequest Category Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-communicationrequest-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-communicationrequest-patient"
      },
      "name" : "UsQualityCoreCommunicationrequestPatient",
      "description" : "US Quality Core CommunicationRequest Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-condition-abatement-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-condition-abatement-date"
      },
      "name" : "UsQualityCoreConditionAbatementDate",
      "description" : "US Quality Core Condition abatement-date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-condition-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-condition-category"
      },
      "name" : "UsQualityCoreConditionCategory",
      "description" : "US Quality Core Condition Category Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-condition-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-condition-code"
      },
      "name" : "UsQualityCoreConditionCode",
      "description" : "US Quality Core Condition Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-condition-onset-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-condition-onset-date"
      },
      "name" : "UsQualityCoreConditionOnsetDate",
      "description" : "US Quality Core Condition onset-date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-condition-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-condition-patient"
      },
      "name" : "UsQualityCoreConditionPatient",
      "description" : "US Quality Core Condition Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-coverage-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-coverage-patient"
      },
      "name" : "UsQualityCoreCoveragePatient",
      "description" : "US Quality Core Coverage Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-device-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-device-patient"
      },
      "name" : "UsQualityCoreDevicePatient",
      "description" : "US Quality Core Device Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-device-type.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-device-type"
      },
      "name" : "UsQualityCoreDeviceType",
      "description" : "US Quality Core Device Type Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-devicerequest-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-devicerequest-code"
      },
      "name" : "UsQualityCoreDevicerequestCode",
      "description" : "US Quality Core DeviceRequest Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-devicerequest-do-not-perform.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-devicerequest-do-not-perform"
      },
      "name" : "UsQualityCoreDevicerequestDoNotPerform",
      "description" : "US Quality Core DeviceRequest do-not-perform Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-devicerequest-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-devicerequest-patient"
      },
      "name" : "UsQualityCoreDevicerequestPatient",
      "description" : "US Quality Core DeviceRequest Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-deviceusestatement-device-type.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-deviceusestatement-device-type"
      },
      "name" : "UsQualityCoreDeviceusestatementDeviceType",
      "description" : "US Quality Core DeviceUseStatement Device Type Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-deviceusestatement-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-deviceusestatement-patient"
      },
      "name" : "UsQualityCoreDeviceusestatementPatient",
      "description" : "US Quality Core DeviceUseStatement Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-diagnosticreport-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-diagnosticreport-category"
      },
      "name" : "UsQualityCoreDiagnosticreportCategory",
      "description" : "US Quality Core DiagnosticReport Category Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-diagnosticreport-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-diagnosticreport-code"
      },
      "name" : "UsQualityCoreDiagnosticreportCode",
      "description" : "US Quality Core DiagnosticReport Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-diagnosticreport-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-diagnosticreport-date"
      },
      "name" : "UsQualityCoreDiagnosticreportDate",
      "description" : "US Quality Core DiagnosticReport date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-diagnosticreport-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-diagnosticreport-patient"
      },
      "name" : "UsQualityCoreDiagnosticreportPatient",
      "description" : "US Quality Core DiagnosticReport Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-encounter-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-encounter-date"
      },
      "name" : "UsQualityCoreEncounterDate",
      "description" : "US Quality Core Encounter date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-encounter-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-encounter-id"
      },
      "name" : "UsQualityCoreEncounter",
      "description" : "US Quality Core Encounter Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-encounter-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-encounter-patient"
      },
      "name" : "UsQualityCoreEncounterPatient",
      "description" : "US Quality Core Encounter Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-encounter-type.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-encounter-type"
      },
      "name" : "UsQualityCoreEncounterType",
      "description" : "US Quality Core Encounter Type Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-familymemberhistory-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-familymemberhistory-patient"
      },
      "name" : "UsQualityCoreFamilymemberhistoryPatient",
      "description" : "US Quality Core FamilyMemberHistory Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-flag-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-flag-code"
      },
      "name" : "UsQualityCoreFlagCode",
      "description" : "US Quality Core Flag Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-flag-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-flag-patient"
      },
      "name" : "UsQualityCoreFlagPatient",
      "description" : "US Quality Core Flag Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-goal-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-goal-patient"
      },
      "name" : "UsQualityCoreGoalPatient",
      "description" : "US Quality Core Goal Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-immunization-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-immunization-date"
      },
      "name" : "UsQualityCoreImmunizationDate",
      "description" : "US Quality Core Immunization date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-immunization-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-immunization-patient"
      },
      "name" : "UsQualityCoreImmunizationPatient",
      "description" : "US Quality Core Immunization Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-immunization-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-immunization-status"
      },
      "name" : "UsQualityCoreImmunizationStatus",
      "description" : "US Quality Core Immunization Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-immunizationevaluation-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-immunizationevaluation-patient"
      },
      "name" : "UsQualityCoreImmunizationevaluationPatient",
      "description" : "US Quality Core ImmunizationEvaluation Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-immunizationevaluation-target-disease.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-immunizationevaluation-target-disease"
      },
      "name" : "UsQualityCoreImmunizationevaluationTargetDisease",
      "description" : "US Quality Core ImmunizationEvaluation Target Disease Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-location-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-location-id"
      },
      "name" : "UsQualityCoreLocation",
      "description" : "US Quality Core Location Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medication-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medication-code"
      },
      "name" : "UsQualityCoreMedicationCode",
      "description" : "US Quality Core Medication Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationadministration-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationadministration-code"
      },
      "name" : "UsQualityCoreMedicationadministrationCode",
      "description" : "US Quality Core MedicationAdministration Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationadministration-effective-time.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationadministration-effective-time"
      },
      "name" : "UsQualityCoreMedicationadministrationEffectiveTime",
      "description" : "US Quality Core MedicationAdministration effective-time Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationadministration-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationadministration-patient"
      },
      "name" : "UsQualityCoreMedicationadministrationPatient",
      "description" : "US Quality Core MedicationAdministration Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationadministration-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationadministration-status"
      },
      "name" : "UsQualityCoreMedicationadministrationStatus",
      "description" : "US Quality Core MedicationAdministration Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationdispense-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationdispense-patient"
      },
      "name" : "UsQualityCoreMedicationdispensePatient",
      "description" : "US Quality Core MedicationDispense Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationdispense-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationdispense-status"
      },
      "name" : "UsQualityCoreMedicationdispenseStatus",
      "description" : "US Quality Core MedicationDispense Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationrequest-do-not-perform.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationrequest-do-not-perform"
      },
      "name" : "UsQualityCoreMedicationrequestDoNotPerform",
      "description" : "US Quality Core MedicationRequest do-not-perform Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationrequest-intent.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationrequest-intent"
      },
      "name" : "UsQualityCoreMedicationrequestIntent",
      "description" : "US Quality Core MedicationRequest intent Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationrequest-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationrequest-patient"
      },
      "name" : "UsQualityCoreMedicationrequestPatient",
      "description" : "US Quality Core MedicationRequest Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationstatement-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationstatement-code"
      },
      "name" : "UsQualityCoreMedicationstatementCode",
      "description" : "US Quality Core MedicationStatement Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-medicationstatement-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-medicationstatement-patient"
      },
      "name" : "UsQualityCoreMedicationstatementPatient",
      "description" : "US Quality Core MedicationStatement Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-observation-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-observation-category"
      },
      "name" : "UsQualityCoreObservationCategory",
      "description" : "US Quality Core Observation Category Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-observation-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-observation-code"
      },
      "name" : "UsQualityCoreObservationCode",
      "description" : "US Quality Core Observation Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-observation-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-observation-date"
      },
      "name" : "UsQualityCoreObservationDate",
      "description" : "US Quality Core Observation date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-observation-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-observation-patient"
      },
      "name" : "UsQualityCoreObservationPatient",
      "description" : "US Quality Core Observation Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-observation-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-observation-status"
      },
      "name" : "UsQualityCoreObservationStatus",
      "description" : "US Quality Core Observation Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-patient-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-patient-id"
      },
      "name" : "UsQualityCorePatient",
      "description" : "US Quality Core Patient Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-practitioner-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-practitioner-id"
      },
      "name" : "UsQualityCorePractitioner",
      "description" : "US Quality Core Practitioner Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-practitionerrole-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-practitionerrole-id"
      },
      "name" : "UsQualityCorePractitionerrole",
      "description" : "US Quality Core PractitionerRole Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-procedure-date.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-procedure-date"
      },
      "name" : "UsQualityCoreProcedureDate",
      "description" : "US Quality Core Procedure date Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-procedure-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-procedure-patient"
      },
      "name" : "UsQualityCoreProcedurePatient",
      "description" : "US Quality Core Procedure Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-procedure-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-procedure-status"
      },
      "name" : "UsQualityCoreProcedureStatus",
      "description" : "US Quality Core Procedure Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-questionnaireresponse-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-questionnaireresponse-id"
      },
      "name" : "UsQualityCoreQuestionnaireresponse",
      "description" : "US Quality Core QuestionnaireResponse Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-questionnaireresponse-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-questionnaireresponse-patient"
      },
      "name" : "UsQualityCoreQuestionnaireresponsePatient",
      "description" : "US Quality Core QuestionnaireResponse Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-questionnaireresponse-questionnaire.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-questionnaireresponse-questionnaire"
      },
      "name" : "UsQualityCoreQuestionnaireresponseQuestionnaire",
      "description" : "US Quality Core QuestionnaireResponse Questionnaire Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-relatedperson-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-relatedperson-id"
      },
      "name" : "UsQualityCoreRelatedperson",
      "description" : "US Quality Core RelatedPerson Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-relatedperson-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-relatedperson-patient"
      },
      "name" : "UsQualityCoreRelatedpersonPatient",
      "description" : "US Quality Core RelatedPerson Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-servicerequest-authored.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-servicerequest-authored"
      },
      "name" : "UsQualityCoreServicerequestAuthored",
      "description" : "US Quality Core ServiceRequest authored Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-servicerequest-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-servicerequest-category"
      },
      "name" : "UsQualityCoreServicerequestCategory",
      "description" : "US Quality Core ServiceRequest Category Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-servicerequest-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-servicerequest-code"
      },
      "name" : "UsQualityCoreServicerequestCode",
      "description" : "US Quality Core ServiceRequest Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-servicerequest-do-not-perform.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-servicerequest-do-not-perform"
      },
      "name" : "UsQualityCoreServicerequestDoNotPerform",
      "description" : "US Quality Core ServiceRequest do-not-perform Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-servicerequest-id.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-servicerequest-id"
      },
      "name" : "UsQualityCoreServicerequest",
      "description" : "US Quality Core ServiceRequest Id Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-servicerequest-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-servicerequest-patient"
      },
      "name" : "UsQualityCoreServicerequestPatient",
      "description" : "US Quality Core ServiceRequest Patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-substance-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-substance-code"
      },
      "name" : "UsQualityCoreSubstanceCode",
      "description" : "US Quality Core Substance Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-task-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-task-code"
      },
      "name" : "UsQualityCoreTaskCode",
      "description" : "US Quality Core Task Code Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-task-patient.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-task-patient"
      },
      "name" : "UsQualityCoreTaskPatient",
      "description" : "US Quality Core Task patient Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-us-quality-core-task-status.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/us-quality-core-task-status"
      },
      "name" : "UsQualityCoreTaskStatus",
      "description" : "US Quality Core Task Status Search Parameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-doNotPerformReason.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-doNotPerformReason"
      },
      "name" : "US Quality Core Do Not Perform Reason",
      "description" : "Indicates the reason the event was not performed."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-encounter-diagnosisPresentOnAdmission.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-encounter-diagnosisPresentOnAdmission"
      },
      "name" : "US Quality Core Diagnosis Present on Admission",
      "description" : "Indicator of whether the Encounter diagnosis was present at the time of admission."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-isElective.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-isElective"
      },
      "name" : "US Quality Core IsElective",
      "description" : "Indicates whether this is an elective procedure."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-notDoneReason.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-notDoneReason"
      },
      "name" : "US Quality Core Not Done Reason",
      "description" : "Indicates the reason the event was not done."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-recorded.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-recorded"
      },
      "name" : "US Quality Core Not Done Recorded",
      "description" : "Captures the recorded date of the event."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-uscdiplusquality.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/uscdiplusquality"
      },
      "name" : "US Quality Core USCDI+ Quality Extension",
      "description" : "This extension is only used in the US Quality Core Implementation Guide's Profile StructureDefinition elements."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-USQualityCore-ModelInfo.html"
      }],
      "reference" : {
        "reference" : "Library/USQualityCore-ModelInfo"
      },
      "name" : "US Quality Core Model Definition",
      "description" : "Model definition for the US Quality Core IG Model"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-USQualityCoreCommon.html"
      }],
      "reference" : {
        "reference" : "Library/USQualityCoreCommon"
      },
      "name" : "US Quality Core Common",
      "description" : "Common terminologies and functions used in US Quality Core-based CQL artifacts"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-USQualityCoreCommonTests.html"
      }],
      "reference" : {
        "reference" : "Library/USQualityCoreCommonTests"
      },
      "name" : "US Quality Core CommonTests",
      "description" : "Tests for the US Quality Core Common library"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-notDoneValueSet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-notDoneValueSet"
      },
      "name" : "USQualityCore Not Done ValueSet",
      "description" : "A logical reference (e.g. a reference to ValueSet.url) to a value set/version that identifies a set of possible coded values representing activities that were not requested, ordered, or performed."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-us-quality-core-servicerequest-appropriatenessScore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/us-quality-core-servicerequest-appropriatenessScore"
      },
      "name" : "USQualityCore Appropriateness Score",
      "description" : "The appropriateness score for the requested action."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-non-negative-event-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-non-negative-event-status"
      },
      "name" : "Non-Negative Event Status",
      "description" : "This value set defines the set of codes that indicate a non-negated event status (i.e. codes that are not `not-done`)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-non-negative-immunization-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-non-negative-immunization-status"
      },
      "name" : "Non-Negative Immunization Status",
      "description" : "This value set defines the set of codes that indicate a non-negated event status for immunization resources (i.e. codes that are not `not-done`)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-non-negative-medication-admin-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-non-negative-medication-admin-status"
      },
      "name" : "Non-Negative MedicationAdministration Status",
      "description" : "This value set defines the set of codes that indicate a non-negated medication administration status (i.e. codes that are not `not-done`)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-non-negative-medicationdispense-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-non-negative-medicationdispense-status"
      },
      "name" : "Non-Negative MedicationDispense Status",
      "description" : "This value set defines the set of codes that indicate a non-negated medication dispense status (i.e. codes that are not `declined`)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-non-negative-observation-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-non-negative-observation-status"
      },
      "name" : "Non-Negative Observation Status",
      "description" : "This value set defines the set of codes that indicate a non-negated observation status (i.e. codes that are not `cancelled`)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-us-quality-core-non-negative-task-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/us-quality-core-non-negative-task-status"
      },
      "name" : "Non-Negative Task Status",
      "description" : "This value set defines the set of codes that indicate a non-negated task status (i.e. codes that are not `rejected`)"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "index.html"
      }],
      "nameUrl" : "index.html",
      "title" : "2026 US Quality Core Implementation Guide",
      "generation" : "markdown",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "conformance.html"
        }],
        "nameUrl" : "conformance.html",
        "title" : "Conformance",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "general-requirements.html"
          }],
          "nameUrl" : "general-requirements.html",
          "title" : "General Requirements",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "must-support.html"
          }],
          "nameUrl" : "must-support.html",
          "title" : "Must Support",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "security.html"
          }],
          "nameUrl" : "security.html",
          "title" : "Privacy, Security, and Consent",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uscdiquality.html"
          }],
          "nameUrl" : "uscdiquality.html",
          "title" : "USCDI+ Quality",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "negation.html"
          }],
          "nameUrl" : "negation.html",
          "title" : "US Quality Core Negation",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "provenance.html"
          }],
          "nameUrl" : "provenance.html",
          "title" : "Provenance",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "relationship-with-uscore-qicore.html"
          }],
          "nameUrl" : "relationship-with-uscore-qicore.html",
          "title" : "Relationship with US Core and QI-Core",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "qdm-to-us-quality-core.html"
          }],
          "nameUrl" : "qdm-to-us-quality-core.html",
          "title" : "Quality Data Model (QDM) v5.6 to US Quality Core v0.5.0 mapping",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "US Quality Core Capability Statements",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "US Quality Core Profiles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "US Quality Core Extensions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "terminology.html"
        }],
        "nameUrl" : "terminology.html",
        "title" : "US Quality Core Terminology",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "US Quality Core Examples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "cql-artifacts.html"
        }],
        "nameUrl" : "cql-artifacts.html",
        "title" : "CQL Artifacts and Patterns (Informational)",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "modelinfo.html"
          }],
          "nameUrl" : "modelinfo.html",
          "title" : "US Quality Core ModelInfo (Informational)",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "patterns.html"
          }],
          "nameUrl" : "patterns.html",
          "title" : "US Quality Core Patterns (Informational)",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "US Quality Core Downloads",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Change Log",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
