# UsQualityCoreDevicerequestDoNotPerform - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UsQualityCoreDevicerequestDoNotPerform**

## SearchParameter: UsQualityCoreDevicerequestDoNotPerform 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-devicerequest-do-not-perform | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:UsQualityCoreDevicerequestDoNotPerform |

 
US Quality Core DeviceRequest do-not-perform Search Parameter 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "us-quality-core-devicerequest-do-not-perform",
  "url" : "http://fhir.org/guides/onc/us-quality-core/SearchParameter/us-quality-core-devicerequest-do-not-perform",
  "version" : "0.5.0",
  "name" : "UsQualityCoreDevicerequestDoNotPerform",
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
  "description" : "US Quality Core DeviceRequest do-not-perform Search Parameter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "code" : "do-not-perform",
  "base" : ["DeviceRequest"],
  "type" : "token",
  "expression" : "DeviceRequest.modifierExtension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-DeviceRequest.doNotPerform').value",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
