# US Quality Core CommunicationRequest - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **US Quality Core CommunicationRequest**

## Resource Profile: US Quality Core CommunicationRequest 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-communicationrequest | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:USQualityCoreCommunicationRequest |

 
Profile of CommunicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. 

### USCDI+ Quality Element Support Expectations

This profile does not include USCDI+ Quality flagged elements and is **not in scope** for USCDI+ Quality V1 conformance requirements in this guide. See the [USCDI+ Quality](uscdiquality.md#summary-list-of-in-scope-profiles-for-conformance) page for the list of profiles and elements that are in scope for USCDI+ Quality V1.

This profile is inherited from QI-Core v6.0.0 and is included to ease adoption for systems that currently support QI-Core. Refer to the [Formal Views](#profile) section for the formal summary, definitions, terminology requirements, and mandatory element requirements.

**Usages:**

* Examples for this Profile: [CommunicationRequest/example](CommunicationRequest-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.onc.us-quality-core|current/StructureDefinition/StructureDefinition-us-quality-core-communicationrequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-us-quality-core-communicationrequest.csv), [Excel](StructureDefinition-us-quality-core-communicationrequest.xlsx), [Schematron](StructureDefinition-us-quality-core-communicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "us-quality-core-communicationrequest",
  "url" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-communicationrequest",
  "version" : "0.5.0",
  "name" : "USQualityCoreCommunicationRequest",
  "title" : "US Quality Core CommunicationRequest",
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
  "description" : "Profile of CommunicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CommunicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CommunicationRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CommunicationRequest",
      "path" : "CommunicationRequest"
    },
    {
      "id" : "CommunicationRequest.status",
      "path" : "CommunicationRequest.status",
      "short" : "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
    },
    {
      "id" : "CommunicationRequest.category",
      "path" : "CommunicationRequest.category",
      "short" : "Message category",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/communication-category"
      }
    },
    {
      "id" : "CommunicationRequest.doNotPerform",
      "path" : "CommunicationRequest.doNotPerform",
      "short" : "True if request is prohibiting action"
    },
    {
      "id" : "CommunicationRequest.subject",
      "path" : "CommunicationRequest.subject",
      "short" : "Focus of message",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient|0.5.0"]
      }]
    },
    {
      "id" : "CommunicationRequest.encounter",
      "path" : "CommunicationRequest.encounter",
      "short" : "Encounter created as part of",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-encounter|0.5.0"]
      }]
    },
    {
      "id" : "CommunicationRequest.recipient",
      "path" : "CommunicationRequest.recipient",
      "short" : "Message recipient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-device|0.5.0",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|6.1.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-organization|0.5.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient|0.5.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-practitioner|0.5.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-relatedperson|0.5.0",
        "http://hl7.org/fhir/StructureDefinition/Group|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1"]
      }]
    },
    {
      "id" : "CommunicationRequest.sender",
      "path" : "CommunicationRequest.sender",
      "short" : "Message sender",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-device|0.5.0",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|6.1.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-organization|0.5.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient|0.5.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-practitioner|0.5.0",
        "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-relatedperson|0.5.0"]
      }]
    }]
  }
}

```
