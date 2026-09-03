# UsQualityCorePatient - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UsQualityCorePatient**

## SearchParameter: UsQualityCorePatient 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-patient-id | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:UsQualityCorePatient |

 
US Quality Core Patient Id Search Parameter 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "us-quality-core-patient-id",
  "url" : "http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-patient-id",
  "version" : "0.5.0",
  "name" : "UsQualityCorePatient",
  "status" : "active",
  "date" : "2026-06-05",
  "publisher" : "Office of the National Coordinator for Health Information Technology (ONC)",
  "contact" : [{
    "name" : "Office of the National Coordinator for Health Information Technology (ONC)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.healthit.gov/feedback"
    }]
  }],
  "description" : "US Quality Core Patient Id Search Parameter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "code" : "_id",
  "base" : ["Patient"],
  "type" : "token",
  "expression" : "Resource.id",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
