# UsQualityCoreQuestionnaireresponse - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UsQualityCoreQuestionnaireresponse**

## SearchParameter: UsQualityCoreQuestionnaireresponse 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-questionnaireresponse-id | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:UsQualityCoreQuestionnaireresponse |

 
US Quality Core QuestionnaireResponse Id Search Parameter 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "us-quality-core-questionnaireresponse-id",
  "url" : "http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-questionnaireresponse-id",
  "version" : "0.5.0",
  "name" : "UsQualityCoreQuestionnaireresponse",
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
  "description" : "US Quality Core QuestionnaireResponse Id Search Parameter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "code" : "_id",
  "base" : ["QuestionnaireResponse"],
  "type" : "token",
  "expression" : "Resource.id",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
