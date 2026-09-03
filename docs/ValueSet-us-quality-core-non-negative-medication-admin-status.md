# Non-Negative MedicationAdministration Status - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Non-Negative MedicationAdministration Status**

## ValueSet: Non-Negative MedicationAdministration Status 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-non-negative-medication-admin-status | *Version*:0.5.0 |
| Active as of 2026-06-05 | *Computable Name*:NonNegativeMedicationAdministrationStatus |

 
This value set defines the set of codes that indicate a non-negated medication administration status (i.e. codes that are not `not-done`) 

 
This value set was defined to support the set of medication administration statuses in FHIR that do not explicitly indicate a negative status (i.e. all the codes from the http://terminology.hl7.org/CodeSystem/medication-admin-status code system that are not `not-done`). 

 **References** 

* [US Quality Core MedicationAdministration](StructureDefinition-us-quality-core-medicationadministration.md)

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
  "id" : "us-quality-core-non-negative-medication-admin-status",
  "url" : "http://fhir.org/guides/onc/us-quality-core/ValueSet/us-quality-core-non-negative-medication-admin-status",
  "version" : "0.5.0",
  "name" : "NonNegativeMedicationAdministrationStatus",
  "title" : "Non-Negative MedicationAdministration Status",
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
  "description" : "This value set defines the set of codes that indicate a non-negated medication administration status (i.e. codes that are not `not-done`)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }],
    "text" : "USA"
  }],
  "purpose" : "This value set was defined to support the set of medication administration statuses in FHIR that do not explicitly indicate a negative status (i.e. all the codes from the http://terminology.hl7.org/CodeSystem/medication-admin-status code system that are not `not-done`).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-status",
      "concept" : [{
        "code" : "in-progress",
        "display" : "In Progress"
      },
      {
        "code" : "on-hold",
        "display" : "On Hold"
      },
      {
        "code" : "completed",
        "display" : "Completed"
      },
      {
        "code" : "entered-in-error",
        "display" : "Entered in Error"
      },
      {
        "code" : "stopped",
        "display" : "Stopped"
      },
      {
        "code" : "unknown",
        "display" : "Unknown"
      }]
    }]
  }
}

```
