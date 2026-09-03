# US Quality Core ImmunizationEvaluation - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **US Quality Core ImmunizationEvaluation**

## Resource Profile: US Quality Core ImmunizationEvaluation 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunizationevaluation | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:USQualityCoreImmunizationEvaluation |

 
Defines constraints and extensions on the ImmunizationEvaluation resource for the minimal set of data to query and retrieve a patient's Immunization Evaluation. 

### USCDI+ Quality Element Support Expectations

This profile does not include USCDI+ Quality flagged elements and is **not in scope** for USCDI+ Quality V1 conformance requirements in this guide. See the [USCDI+ Quality](uscdiquality.md#summary-list-of-in-scope-profiles-for-conformance) page for the list of profiles and elements that are in scope for USCDI+ Quality V1.

This profile is inherited from QI-Core v6.0.0 and is included to ease adoption for systems that currently support QI-Core. Refer to the [Formal Views](#profile) section for the formal summary, definitions, terminology requirements, and mandatory element requirements.

**Usages:**

* Refer to this Profile: [US Quality Core ImmunizationRecommendation](StructureDefinition-us-quality-core-immunizationrecommendation.md)
* Examples for this Profile: [ImmunizationEvaluation/example](ImmunizationEvaluation-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.onc.us-quality-core|current/StructureDefinition/StructureDefinition-us-quality-core-immunizationevaluation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-us-quality-core-immunizationevaluation.csv), [Excel](StructureDefinition-us-quality-core-immunizationevaluation.xlsx), [Schematron](StructureDefinition-us-quality-core-immunizationevaluation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "us-quality-core-immunizationevaluation",
  "url" : "http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunizationevaluation",
  "version" : "0.5.0",
  "name" : "USQualityCoreImmunizationEvaluation",
  "title" : "US Quality Core ImmunizationEvaluation",
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
  "description" : "Defines constraints and extensions on the ImmunizationEvaluation resource for the minimal set of data to query and retrieve a patient's Immunization Evaluation.",
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
    "identity" : "argonaut-dq-dstu2",
    "uri" : "http://unknown.org/Argonaut-DQ-DSTU2",
    "name" : "Argonaut-DQ-DSTU2"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
  "type" : "ImmunizationEvaluation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImmunizationEvaluation",
      "path" : "ImmunizationEvaluation",
      "mustSupport" : false,
      "mapping" : [{
        "identity" : "argonaut-dq-dstu2",
        "map" : "CarePlan"
      }]
    },
    {
      "id" : "ImmunizationEvaluation.identifier",
      "path" : "ImmunizationEvaluation.identifier",
      "short" : "Business identifier",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "argonaut-dq-dstu2",
        "map" : "CarePlan.subject"
      }]
    },
    {
      "id" : "ImmunizationEvaluation.status",
      "path" : "ImmunizationEvaluation.status",
      "short" : "completed | entered-in-error"
    },
    {
      "id" : "ImmunizationEvaluation.patient",
      "path" : "ImmunizationEvaluation.patient",
      "short" : "Who this evaluation is for",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-patient|0.5.0"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.date",
      "path" : "ImmunizationEvaluation.date",
      "short" : "Date evaluation was performed",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ImmunizationEvaluation.authority",
      "path" : "ImmunizationEvaluation.authority",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-organization|0.5.0"]
      }],
      "mustSupport" : false
    },
    {
      "id" : "ImmunizationEvaluation.targetDisease",
      "path" : "ImmunizationEvaluation.targetDisease",
      "short" : "Evaluation target disease",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-evaluation-target-disease"
      }
    },
    {
      "id" : "ImmunizationEvaluation.immunizationEvent",
      "path" : "ImmunizationEvaluation.immunizationEvent",
      "short" : "Immunization being evaluated",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.org/guides/onc/us-quality-core/StructureDefinition/us-quality-core-immunization|0.5.0"]
      }]
    },
    {
      "id" : "ImmunizationEvaluation.doseStatus",
      "path" : "ImmunizationEvaluation.doseStatus",
      "short" : "Status of the dose relative to published recommendations",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status"
      }
    },
    {
      "id" : "ImmunizationEvaluation.doseStatusReason",
      "path" : "ImmunizationEvaluation.doseStatusReason",
      "short" : "Reason for the dose status",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status"
      }
    }]
  }
}

```
