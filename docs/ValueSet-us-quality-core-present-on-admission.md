# USQualityCore Present On Admission Codes - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **USQualityCore Present On Admission Codes**

## ValueSet: USQualityCore Present On Admission Codes 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-present-on-admission | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:USQualityCorePresentOnAdmission |

 
Value Set for USQualityCore Present On Admission. 

 **References** 

* [US Quality Core Diagnosis Present on Admission](StructureDefinition-us-quality-core-encounter-diagnosisPresentOnAdmission.md)

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
  "id" : "us-quality-core-present-on-admission",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-present-on-admission",
  "version" : "0.5.0",
  "name" : "USQualityCorePresentOnAdmission",
  "title" : "USQualityCore Present On Admission Codes",
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
  "description" : "Value Set for USQualityCore Present On Admission.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/HospitalAcqCond/Coding",
      "concept" : [{
        "code" : "Y",
        "display" : "Yes"
      },
      {
        "code" : "N",
        "display" : "No"
      },
      {
        "code" : "U",
        "display" : "Unknown"
      },
      {
        "code" : "W",
        "display" : "Undetermined"
      },
      {
        "code" : "1",
        "display" : "Unreported"
      }]
    }]
  }
}

```
