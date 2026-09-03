# Non-Negative Observation Status - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Non-Negative Observation Status**

## ValueSet: Non-Negative Observation Status 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-non-negative-observation-status | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:NonNegativeObservationStatus |

 
This value set defines the set of codes that indicate a non-negated observation status (i.e. codes that are not `cancelled`) 

 
This value set was defined to support the set of observation statuses in FHIR that do not explicitly indicate a negative status (i.e. all the codes from the http://hl7.org/fhir/observation-status code system that are not `cancelled`). 

 **References** 

* [US Quality Core NonPatient Observation](StructureDefinition-us-quality-core-nonpatient-observation.md)
* [US Quality Core Observation Clinical Result](StructureDefinition-us-quality-core-observation-clinical-result.md)
* [US Quality Core Laboratory Result Observation](StructureDefinition-us-quality-core-observation-lab.md)
* [US Quality Core Observation Screening Assessment](StructureDefinition-us-quality-core-observation-screening-assessment.md)
* [US Quality Core Simple Observation](StructureDefinition-us-quality-core-simple-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "us-quality-core-non-negative-observation-status",
  "url" : "http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-non-negative-observation-status",
  "version" : "0.5.0",
  "name" : "NonNegativeObservationStatus",
  "title" : "Non-Negative Observation Status",
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
  "description" : "This value set defines the set of codes that indicate a non-negated observation status (i.e. codes that are not `cancelled`)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "purpose" : "This value set was defined to support the set of observation statuses in FHIR that do not explicitly indicate a negative status (i.e. all the codes from the http://hl7.org/fhir/observation-status code system that are not `cancelled`).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/observation-status",
      "concept" : [{
        "code" : "registered",
        "display" : "Registered"
      },
      {
        "code" : "preliminary",
        "display" : "Preliminary"
      },
      {
        "code" : "final",
        "display" : "Final"
      },
      {
        "code" : "amended",
        "display" : "Amended"
      },
      {
        "code" : "corrected",
        "display" : "Corrected"
      },
      {
        "code" : "entered-in-error",
        "display" : "Entered in Error"
      },
      {
        "code" : "unknown",
        "display" : "Unknown"
      }]
    }]
  }
}

```
