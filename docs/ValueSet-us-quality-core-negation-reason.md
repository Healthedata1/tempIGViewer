# USQualityCore Negation Reason Codes - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **USQualityCore Negation Reason Codes**

## ValueSet: USQualityCore Negation Reason Codes 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-negation-reason | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:NegationReasonCodes |

 
This value set defines the set of codes that can be used to indicate the reason an action was not taken 

 
This value set was defined to support identifying any of the possible negation reason codes as part of USQualityCore profiles. The value set is composed of the codes from [Medical Reason Not Done SCT](http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.56), [Patient Reason Not Done SCT](http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.58), and [System Reason](http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.526.3.1009) as defined and available in the Value Set Authority Center. 

 **References** 

* [US Quality Core Communication Not Done](StructureDefinition-us-quality-core-communicationnotdone.md)
* [US Quality Core Do Not Perform Reason](StructureDefinition-us-quality-core-doNotPerformReason.md)
* [US Quality Core Immunization Not Done](StructureDefinition-us-quality-core-immunizationnotdone.md)
* [US Quality Core MedicationAdministration Not Done](StructureDefinition-us-quality-core-medicationadministrationnotdone.md)
* [US Quality Core MedicationDispense Declined](StructureDefinition-us-quality-core-medicationdispensedeclined.md)
* [US Quality Core Medication Not Requested](StructureDefinition-us-quality-core-medicationnotrequested.md)
* [US Quality Core Not Done Reason](StructureDefinition-us-quality-core-notDoneReason.md)
* [US Quality Core Procedure Not Done](StructureDefinition-us-quality-core-procedurenotdone.md)
* [US Quality Core Task Rejected](StructureDefinition-us-quality-core-taskrejected.md)

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
  "id" : "us-quality-core-negation-reason",
  "url" : "http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-negation-reason",
  "version" : "0.5.0",
  "name" : "NegationReasonCodes",
  "title" : "USQualityCore Negation Reason Codes",
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
  "description" : "This value set defines the set of codes that can be used to indicate the reason an action was not taken",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "purpose" : "This value set was defined to support identifying any of the possible negation reason codes as part of USQualityCore profiles. The value set is composed of the codes from [Medical Reason Not Done SCT](http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.56), [Patient Reason Not Done SCT](http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.58), and [System Reason](http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.526.3.1009) as defined and available in the Value Set Authority Center.",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.56"]
    },
    {
      "valueSet" : ["http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.58"]
    },
    {
      "valueSet" : ["http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.526.3.1009"]
    }]
  }
}

```
