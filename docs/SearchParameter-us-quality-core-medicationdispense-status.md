# UsQualityCoreMedicationdispenseStatus - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UsQualityCoreMedicationdispenseStatus**

## SearchParameter: UsQualityCoreMedicationdispenseStatus 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-medicationdispense-status | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:UsQualityCoreMedicationdispenseStatus |

 
US Quality Core MedicationDispense Status Search Parameter 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "us-quality-core-medicationdispense-status",
  "url" : "http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-medicationdispense-status",
  "version" : "0.5.0",
  "name" : "UsQualityCoreMedicationdispenseStatus",
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
  "description" : "US Quality Core MedicationDispense Status Search Parameter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "code" : "status",
  "base" : ["MedicationDispense"],
  "type" : "token",
  "expression" : "MedicationDispense.status",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
