# Artifacts Summary - 2026 US Quality Core Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [US Quality Core Client CapabilityStatement](CapabilityStatement-us-quality-core-client.md) | This capability statement describes the expected capabilities of the US Quality Core Client which is responsible for initiating queries for USCDI+ Quality V1 data from US Quality Core Servers. The set of FHIR RESTful operations and search parameters required to be supported by US Quality Core Servers is provided in the [US Quality Core Server Capability Statement](CapabilityStatement-us-quality-core-server.md). US Quality Core Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements. |
| [US Quality Core Server CapabilityStatement](CapabilityStatement-us-quality-core-server.md) | This capability statement describes the expected capabilities of the US Quality Core Servers which is responsible for responding to USCDI+ Quality V1 queries submitted by US Quality Core Clients. It describes a minimum set of FHIR RESTful operations and search parameters necessary to enable access to the set of USCDI+ Quality V1 data that is in scope of this implementation guide. For more information about which USCDI+ Quality data elements are in scope, please review the [USCDI+ Quality](uscdiquality.md) section of this implementation guide.US Quality Core Servers **SHALL** support the capabilities described in the [US Core Server CapabilityStatement STU6.1](https://hl7.org/fhir/us/core/STU6.1/CapabilityStatement-us-core-server.html). Some RESTFUL operations and search parameters described in the US Quality Core Server CapabilityStatement are redundant to the US Core Server CapabilityStatement, but are listed here to highlight which capabilities are specifically relevant to USCDI+ Quality V1.The US Quality Core Implementation Guide v0.5.0 is derived from the QI-Core Implementation Guide STU6. It adopts all profiles within the [QI-Core Implementation Guide STU6](https://hl7.org/fhir/us/qicore/STU6/) to enable a more seamless adoption of this implementation guide. However, only those profiles that contain USCDI+ Quality V1 data are required to be supported by US Quality Core Servers. The FHIR RESTful operations and search parameters in this capability statement reflects this scope. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [UsQualityCoreAdverseeventEvent](SearchParameter-us-quality-core-adverseevent-event.md) | US Quality Core AdverseEvent Event Search Parameter |
| [UsQualityCoreAdverseeventRecordedDate](SearchParameter-us-quality-core-adverseevent-recorded-date.md) | US Quality Core AdverseEvent recorded-date Search Parameter |
| [UsQualityCoreAdverseeventSubject](SearchParameter-us-quality-core-adverseevent-subject.md) | US Quality Core AdverseEvent Subject Search Parameter |
| [UsQualityCoreAllergyintolerancePatient](SearchParameter-us-quality-core-allergyintolerance-patient.md) | US Quality Core AllergyIntolerance Patient Search Parameter |
| [UsQualityCoreBodystructurePatient](SearchParameter-us-quality-core-bodystructure-patient.md) | US Quality Core BodyStructure Patient Search Parameter |
| [UsQualityCoreCareplanCategory](SearchParameter-us-quality-core-careplan-category.md) | US Quality Core CarePlan Category Search Parameter |
| [UsQualityCoreCareplanPatient](SearchParameter-us-quality-core-careplan-patient.md) | US Quality Core CarePlan Patient Search Parameter |
| [UsQualityCoreCareteamPatient](SearchParameter-us-quality-core-careteam-patient.md) | US Quality Core CareTeam Patient Search Parameter |
| [UsQualityCoreCareteamStatus](SearchParameter-us-quality-core-careteam-status.md) | US Quality Core CareTeam Status Search Parameter |
| [UsQualityCoreClaimPatient](SearchParameter-us-quality-core-claim-patient.md) | US Quality Core Claim Patient Search Parameter |
| [UsQualityCoreClaimresponsePatient](SearchParameter-us-quality-core-claimresponse-patient.md) | US Quality Core ClaimResponse Patient Search Parameter |
| [UsQualityCoreClaimresponseType](SearchParameter-us-quality-core-claimresponse-type.md) | US Quality Core ClaimResponse Type Search Parameter |
| [UsQualityCoreCommunicationPatient](SearchParameter-us-quality-core-communication-patient.md) | US Quality Core Communication Patient Search Parameter |
| [UsQualityCoreCommunicationTopic](SearchParameter-us-quality-core-communication-topic.md) | US Quality Core Communication Topic Search Parameter |
| [UsQualityCoreCommunicationrequestCategory](SearchParameter-us-quality-core-communicationrequest-category.md) | US Quality Core CommunicationRequest Category Search Parameter |
| [UsQualityCoreCommunicationrequestPatient](SearchParameter-us-quality-core-communicationrequest-patient.md) | US Quality Core CommunicationRequest Patient Search Parameter |
| [UsQualityCoreConditionAbatementDate](SearchParameter-us-quality-core-condition-abatement-date.md) | US Quality Core Condition abatement-date Search Parameter |
| [UsQualityCoreConditionCategory](SearchParameter-us-quality-core-condition-category.md) | US Quality Core Condition Category Search Parameter |
| [UsQualityCoreConditionCode](SearchParameter-us-quality-core-condition-code.md) | US Quality Core Condition Code Search Parameter |
| [UsQualityCoreConditionOnsetDate](SearchParameter-us-quality-core-condition-onset-date.md) | US Quality Core Condition onset-date Search Parameter |
| [UsQualityCoreConditionPatient](SearchParameter-us-quality-core-condition-patient.md) | US Quality Core Condition Patient Search Parameter |
| [UsQualityCoreCoveragePatient](SearchParameter-us-quality-core-coverage-patient.md) | US Quality Core Coverage Patient Search Parameter |
| [UsQualityCoreDevicePatient](SearchParameter-us-quality-core-device-patient.md) | US Quality Core Device Patient Search Parameter |
| [UsQualityCoreDeviceType](SearchParameter-us-quality-core-device-type.md) | US Quality Core Device Type Search Parameter |
| [UsQualityCoreDevicerequestCode](SearchParameter-us-quality-core-devicerequest-code.md) | US Quality Core DeviceRequest Code Search Parameter |
| [UsQualityCoreDevicerequestDoNotPerform](SearchParameter-us-quality-core-devicerequest-do-not-perform.md) | US Quality Core DeviceRequest do-not-perform Search Parameter |
| [UsQualityCoreDevicerequestPatient](SearchParameter-us-quality-core-devicerequest-patient.md) | US Quality Core DeviceRequest Patient Search Parameter |
| [UsQualityCoreDeviceusestatementDeviceType](SearchParameter-us-quality-core-deviceusestatement-device-type.md) | US Quality Core DeviceUseStatement Device Type Search Parameter |
| [UsQualityCoreDeviceusestatementPatient](SearchParameter-us-quality-core-deviceusestatement-patient.md) | US Quality Core DeviceUseStatement Patient Search Parameter |
| [UsQualityCoreDiagnosticreportCategory](SearchParameter-us-quality-core-diagnosticreport-category.md) | US Quality Core DiagnosticReport Category Search Parameter |
| [UsQualityCoreDiagnosticreportCode](SearchParameter-us-quality-core-diagnosticreport-code.md) | US Quality Core DiagnosticReport Code Search Parameter |
| [UsQualityCoreDiagnosticreportDate](SearchParameter-us-quality-core-diagnosticreport-date.md) | US Quality Core DiagnosticReport date Search Parameter |
| [UsQualityCoreDiagnosticreportPatient](SearchParameter-us-quality-core-diagnosticreport-patient.md) | US Quality Core DiagnosticReport Patient Search Parameter |
| [UsQualityCoreEncounter](SearchParameter-us-quality-core-encounter-id.md) | US Quality Core Encounter Id Search Parameter |
| [UsQualityCoreEncounterDate](SearchParameter-us-quality-core-encounter-date.md) | US Quality Core Encounter date Search Parameter |
| [UsQualityCoreEncounterPatient](SearchParameter-us-quality-core-encounter-patient.md) | US Quality Core Encounter Patient Search Parameter |
| [UsQualityCoreEncounterType](SearchParameter-us-quality-core-encounter-type.md) | US Quality Core Encounter Type Search Parameter |
| [UsQualityCoreFamilymemberhistoryPatient](SearchParameter-us-quality-core-familymemberhistory-patient.md) | US Quality Core FamilyMemberHistory Patient Search Parameter |
| [UsQualityCoreFlagCode](SearchParameter-us-quality-core-flag-code.md) | US Quality Core Flag Code Search Parameter |
| [UsQualityCoreFlagPatient](SearchParameter-us-quality-core-flag-patient.md) | US Quality Core Flag Patient Search Parameter |
| [UsQualityCoreGoalPatient](SearchParameter-us-quality-core-goal-patient.md) | US Quality Core Goal Patient Search Parameter |
| [UsQualityCoreImmunizationDate](SearchParameter-us-quality-core-immunization-date.md) | US Quality Core Immunization date Search Parameter |
| [UsQualityCoreImmunizationPatient](SearchParameter-us-quality-core-immunization-patient.md) | US Quality Core Immunization Patient Search Parameter |
| [UsQualityCoreImmunizationStatus](SearchParameter-us-quality-core-immunization-status.md) | US Quality Core Immunization Status Search Parameter |
| [UsQualityCoreImmunizationevaluationPatient](SearchParameter-us-quality-core-immunizationevaluation-patient.md) | US Quality Core ImmunizationEvaluation Patient Search Parameter |
| [UsQualityCoreImmunizationevaluationTargetDisease](SearchParameter-us-quality-core-immunizationevaluation-target-disease.md) | US Quality Core ImmunizationEvaluation Target Disease Search Parameter |
| [UsQualityCoreLocation](SearchParameter-us-quality-core-location-id.md) | US Quality Core Location Id Search Parameter |
| [UsQualityCoreMedicationCode](SearchParameter-us-quality-core-medication-code.md) | US Quality Core Medication Code Search Parameter |
| [UsQualityCoreMedicationadministrationCode](SearchParameter-us-quality-core-medicationadministration-code.md) | US Quality Core MedicationAdministration Code Search Parameter |
| [UsQualityCoreMedicationadministrationEffectiveTime](SearchParameter-us-quality-core-medicationadministration-effective-time.md) | US Quality Core MedicationAdministration effective-time Search Parameter |
| [UsQualityCoreMedicationadministrationPatient](SearchParameter-us-quality-core-medicationadministration-patient.md) | US Quality Core MedicationAdministration Patient Search Parameter |
| [UsQualityCoreMedicationadministrationStatus](SearchParameter-us-quality-core-medicationadministration-status.md) | US Quality Core MedicationAdministration Status Search Parameter |
| [UsQualityCoreMedicationdispensePatient](SearchParameter-us-quality-core-medicationdispense-patient.md) | US Quality Core MedicationDispense Patient Search Parameter |
| [UsQualityCoreMedicationdispenseStatus](SearchParameter-us-quality-core-medicationdispense-status.md) | US Quality Core MedicationDispense Status Search Parameter |
| [UsQualityCoreMedicationrequestDoNotPerform](SearchParameter-us-quality-core-medicationrequest-do-not-perform.md) | US Quality Core MedicationRequest do-not-perform Search Parameter |
| [UsQualityCoreMedicationrequestIntent](SearchParameter-us-quality-core-medicationrequest-intent.md) | US Quality Core MedicationRequest intent Search Parameter |
| [UsQualityCoreMedicationrequestPatient](SearchParameter-us-quality-core-medicationrequest-patient.md) | US Quality Core MedicationRequest Patient Search Parameter |
| [UsQualityCoreMedicationstatementCode](SearchParameter-us-quality-core-medicationstatement-code.md) | US Quality Core MedicationStatement Code Search Parameter |
| [UsQualityCoreMedicationstatementPatient](SearchParameter-us-quality-core-medicationstatement-patient.md) | US Quality Core MedicationStatement Patient Search Parameter |
| [UsQualityCoreObservationCategory](SearchParameter-us-quality-core-observation-category.md) | US Quality Core Observation Category Search Parameter |
| [UsQualityCoreObservationCode](SearchParameter-us-quality-core-observation-code.md) | US Quality Core Observation Code Search Parameter |
| [UsQualityCoreObservationDate](SearchParameter-us-quality-core-observation-date.md) | US Quality Core Observation date Search Parameter |
| [UsQualityCoreObservationPatient](SearchParameter-us-quality-core-observation-patient.md) | US Quality Core Observation Patient Search Parameter |
| [UsQualityCoreObservationStatus](SearchParameter-us-quality-core-observation-status.md) | US Quality Core Observation Status Search Parameter |
| [UsQualityCorePatient](SearchParameter-us-quality-core-patient-id.md) | US Quality Core Patient Id Search Parameter |
| [UsQualityCorePractitioner](SearchParameter-us-quality-core-practitioner-id.md) | US Quality Core Practitioner Id Search Parameter |
| [UsQualityCorePractitionerrole](SearchParameter-us-quality-core-practitionerrole-id.md) | US Quality Core PractitionerRole Id Search Parameter |
| [UsQualityCoreProcedureDate](SearchParameter-us-quality-core-procedure-date.md) | US Quality Core Procedure date Search Parameter |
| [UsQualityCoreProcedurePatient](SearchParameter-us-quality-core-procedure-patient.md) | US Quality Core Procedure Patient Search Parameter |
| [UsQualityCoreProcedureStatus](SearchParameter-us-quality-core-procedure-status.md) | US Quality Core Procedure Status Search Parameter |
| [UsQualityCoreQuestionnaireresponse](SearchParameter-us-quality-core-questionnaireresponse-id.md) | US Quality Core QuestionnaireResponse Id Search Parameter |
| [UsQualityCoreQuestionnaireresponsePatient](SearchParameter-us-quality-core-questionnaireresponse-patient.md) | US Quality Core QuestionnaireResponse Patient Search Parameter |
| [UsQualityCoreQuestionnaireresponseQuestionnaire](SearchParameter-us-quality-core-questionnaireresponse-questionnaire.md) | US Quality Core QuestionnaireResponse Questionnaire Search Parameter |
| [UsQualityCoreRelatedperson](SearchParameter-us-quality-core-relatedperson-id.md) | US Quality Core RelatedPerson Id Search Parameter |
| [UsQualityCoreRelatedpersonPatient](SearchParameter-us-quality-core-relatedperson-patient.md) | US Quality Core RelatedPerson Patient Search Parameter |
| [UsQualityCoreServicerequest](SearchParameter-us-quality-core-servicerequest-id.md) | US Quality Core ServiceRequest Id Search Parameter |
| [UsQualityCoreServicerequestAuthored](SearchParameter-us-quality-core-servicerequest-authored.md) | US Quality Core ServiceRequest authored Search Parameter |
| [UsQualityCoreServicerequestCategory](SearchParameter-us-quality-core-servicerequest-category.md) | US Quality Core ServiceRequest Category Search Parameter |
| [UsQualityCoreServicerequestCode](SearchParameter-us-quality-core-servicerequest-code.md) | US Quality Core ServiceRequest Code Search Parameter |
| [UsQualityCoreServicerequestDoNotPerform](SearchParameter-us-quality-core-servicerequest-do-not-perform.md) | US Quality Core ServiceRequest do-not-perform Search Parameter |
| [UsQualityCoreServicerequestPatient](SearchParameter-us-quality-core-servicerequest-patient.md) | US Quality Core ServiceRequest Patient Search Parameter |
| [UsQualityCoreSubstanceCode](SearchParameter-us-quality-core-substance-code.md) | US Quality Core Substance Code Search Parameter |
| [UsQualityCoreTaskCode](SearchParameter-us-quality-core-task-code.md) | US Quality Core Task Code Search Parameter |
| [UsQualityCoreTaskPatient](SearchParameter-us-quality-core-task-patient.md) | US Quality Core Task patient Search Parameter |
| [UsQualityCoreTaskStatus](SearchParameter-us-quality-core-task-status.md) | US Quality Core Task Status Search Parameter |

### Knowledge Artifacts: Libraries 

These define logic, asset collections and other libraries as part of content in this implementation guide.

| | |
| :--- | :--- |
| [US Quality Core Common](Library-USQualityCoreCommon.md) | Common terminologies and functions used in US Quality Core-based CQL artifacts |
| [US Quality Core CommonTests](Library-USQualityCoreCommonTests.md) | Tests for the US Quality Core Common library |
| [US Quality Core Model Definition](Library-USQualityCore-ModelInfo.md) | Model definition for the US Quality Core IG Model |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [US Quality Core AdverseEvent](StructureDefinition-us-quality-core-adverseevent.md) | An adverse event (AE) is an untoward occurrence during treatment that should be reported, for example, to a clinical study sponsor or safety oversight organization. AEs include reportable serious medical errors such as those defined by National Quality Forum (see http://www.qualityforum.org/Topics/ SREs/List_of_SREs.aspx), and Patient Safety Healthcare Events as defined by AHRQ. Some AEs can involve conditions such as "recurring headaches" but others do not, such as accidental falls, surgical errors, sexual abuse of patient, and sudden death. An adverse event can also be an unsafe condition that increases the probability of a patient safety event, and near-misses. An adverse event can be caused by exposure to some agent (e.g., a medication, immunization, food, or environmental agent). An adverse reaction can range from a mild reaction, such as a harmless rash to a severe and life-threatening condition. They can occur immediately or develop over time. For example, a patient may develop a rash after taking a particular medication. |
| [US Quality Core AllergyIntolerance](StructureDefinition-us-quality-core-allergyintolerance.md) | Profile of AllergyIntolerance for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core BodyStructure](StructureDefinition-us-quality-core-bodystructure.md) | Profile of BodyStructure for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core CarePlan](StructureDefinition-us-quality-core-careplan.md) | The US Quality Core CarePlan is based upon the US Core CarePlan Profile which is based upon the core FHIR CarePlan Resource and created to meet the 2015 Edition Common Clinical Data Set 'Assessment and Plan of Treatment requirements. Defines constraints and extensions on the CarePlan resource for the minimal set of data to query and retrieve a patient's Care Plan. |
| [US Quality Core CareTeam](StructureDefinition-us-quality-core-careteam.md) | Profile of CareTeam for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Claim](StructureDefinition-us-quality-core-claim.md) | Profile of Claim for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core ClaimResponse](StructureDefinition-us-quality-core-claimresponse.md) | The US Quality Core ClaimResponse profile is used to provide the results of the adjudication and/or authorization of a set of healthcare-related products and services for a patient against the patient's insurance coverages, or to respond with what the adjudication would be for a supplied set of products or services should they be actually supplied to the patient. It identifies the mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the ClaimResponse resource when using this profile |
| [US Quality Core Communication](StructureDefinition-us-quality-core-communication.md) | Profile of Communication for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Communication Not Done](StructureDefinition-us-quality-core-communicationnotdone.md) | Profile of CommunicationNotDone for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core CommunicationRequest](StructureDefinition-us-quality-core-communicationrequest.md) | Profile of CommunicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Condition Encounter Diagnosis](StructureDefinition-us-quality-core-condition-encounter-diagnosis.md) | The US Quality Core Condition Encounter Diagnosis Profile is based upon the US Core Condition Encounter Diagnosis Profile. In version 5.0.0, The US Quality Core Condition Profile has been split into the US Quality Core Condition Encounter Diagnosis Profile and US Quality Core Condition Problems and Health Concerns Profile. To promote interoperability and adoption through common implementation, this profile defines constraints and extensions on the Condition resource for the minimal set of data to record, search, and fetch information about an encounter diagnosis. It Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Condition Problems Health Concerns](StructureDefinition-us-quality-core-condition-problems-health-concerns.md) | Profile of Condition for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Coverage](StructureDefinition-us-quality-core-coverage.md) | Profile of Coverage for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Device](StructureDefinition-us-quality-core-device.md) | Profile of Device for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Device Not Requested](StructureDefinition-us-quality-core-devicenotrequested.md) | Profile of DeviceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core DeviceRequest](StructureDefinition-us-quality-core-devicerequest.md) | Profile of DeviceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core DeviceUseStatement](StructureDefinition-us-quality-core-deviceusestatement.md) | Profile of DeviceUseStatement for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core DiagnosticReport Profile for Laboratory Results Reporting](StructureDefinition-us-quality-core-diagnosticreport-lab.md) | Profile of DiagnosticReport for laboratory results for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core DiagnosticReport Profile for Report and Note Exchange](StructureDefinition-us-quality-core-diagnosticreport-note.md) | Profile of DiagnosticReport for Note exchange for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Encounter](StructureDefinition-us-quality-core-encounter.md) | Profile of Encounter for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core FamilyMemberHistory](StructureDefinition-us-quality-core-familymemberhistory.md) | Profile of Family Member History for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Flag](StructureDefinition-us-quality-core-flag.md) | Profile of Flag for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Goal](StructureDefinition-us-quality-core-goal.md) | Profile of Goal for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core ImagingStudy](StructureDefinition-us-quality-core-imagingstudy.md) | Profile of ImagingStudy for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Immunization](StructureDefinition-us-quality-core-immunization.md) | Profile of Immunization for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Immunization Not Done](StructureDefinition-us-quality-core-immunizationnotdone.md) | Negation profile of Immunization for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core ImmunizationEvaluation](StructureDefinition-us-quality-core-immunizationevaluation.md) | Defines constraints and extensions on the ImmunizationEvaluation resource for the minimal set of data to query and retrieve a patient's Immunization Evaluation. |
| [US Quality Core ImmunizationRecommendation](StructureDefinition-us-quality-core-immunizationrecommendation.md) | Profile of ImmunizationRecommendation for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Laboratory Result Observation](StructureDefinition-us-quality-core-observation-lab.md) | The US Quality Core Laboratory Result Observation Profile is based upon the US Laboratory Result Observation Resource. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Location](StructureDefinition-us-quality-core-location.md) | Profile of Location for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Medication](StructureDefinition-us-quality-core-medication.md) | Profile of Medication for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Medication Not Requested](StructureDefinition-us-quality-core-medicationnotrequested.md) | Negation profile of MedicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core MedicationAdministration](StructureDefinition-us-quality-core-medicationadministration.md) | Profile of MedicationAdministration for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core MedicationAdministration Not Done](StructureDefinition-us-quality-core-medicationadministrationnotdone.md) | Negation profile of MedicationAdministration for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core MedicationDispense](StructureDefinition-us-quality-core-medicationdispense.md) | Profile of MedicationDispense for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core MedicationDispense Declined](StructureDefinition-us-quality-core-medicationdispensedeclined.md) | Negation profile of MedicationDispense for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core MedicationRequest](StructureDefinition-us-quality-core-medicationrequest.md) | Profile of MedicationRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core MedicationStatement](StructureDefinition-us-quality-core-medicationstatement.md) | Profile of MedicationStatement for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core NonPatient Observation](StructureDefinition-us-quality-core-nonpatient-observation.md) | Profile of NonPatient Observation for decision support/quality metrics evaluating resource use and availability rather than focusing on patients. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core NutritionOrder](StructureDefinition-us-quality-core-nutritionorder.md) | Defines constraints and extensions on the NutritionOrder resource for the minimal set of data to query and retrieve a patient's Nutrition Order. |
| [US Quality Core Observation Cancelled](StructureDefinition-us-quality-core-observationcancelled.md) | Profile of ObservationCancelled for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Observation Clinical Result](StructureDefinition-us-quality-core-observation-clinical-result.md) | The US Quality Core Observation Clinical Result Profile is based upon the US Core Observation Clinical Result Profile. Clinical results includes non-imaging and non-laboratory tests performed on a patient that results in structured or unstructured (narrative) findings specific to the patient, such as electrocardiogram (ECG), visual acuity exam, macular exam, or graded exercise testing (GXT), to facilitate the diagnosis and management of conditions. The US Quality Core Observation Clinical Result Profile profile defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Observation Screening Assessment](StructureDefinition-us-quality-core-observation-screening-assessment.md) | The US Quality Core Observation Screening Assessment Profile is based upon the US Core Observation Screening Assessment Profile which can be used to represent individual responses, panels of multi-question surveys, and multi-select responses to “check all that apply” questions. The US Quality Core Observation Survey Profile sets minimum expectations for the Observation Resource to record, search, and fetch retrieve observations that represent the questions and responses to form/survey and defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Organization](StructureDefinition-us-quality-core-organization.md) | Profile of Organization for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Patient](StructureDefinition-us-quality-core-patient.md) | Profile of Patient for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Practitioner](StructureDefinition-us-quality-core-practitioner.md) | Profile of Practitioner for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core PractitionerRole](StructureDefinition-us-quality-core-practitionerrole.md) | Profile of PractitionerRole for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Procedure](StructureDefinition-us-quality-core-procedure.md) | Profile of Procedure for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Procedure Not Done](StructureDefinition-us-quality-core-procedurenotdone.md) | Profile of Procedure for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core QuestionnaireResponse](StructureDefinition-us-quality-core-questionnaireresponse.md) | The US Quality Core QuestionnaireResponse Profile is based upon the US Core QuestionnaireResponse Profile and sets minimum expectations for the QuestionnaireResponse resource to record, search, and fetch retrieve captures the responses to form/survey and defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core RelatedPerson](StructureDefinition-us-quality-core-relatedperson.md) | Profile of RelatedPerson for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Service Not Requested](StructureDefinition-us-quality-core-servicenotrequested.md) | Negation profile of ServiceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core ServiceRequest](StructureDefinition-us-quality-core-servicerequest.md) | Profile of ServiceRequest for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Simple Observation](StructureDefinition-us-quality-core-simple-observation.md) | Profile of Simple Observation for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Substance](StructureDefinition-us-quality-core-substance.md) | Profile of Substance for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Task](StructureDefinition-us-quality-core-task.md) | Profile of Task for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |
| [US Quality Core Task Rejected](StructureDefinition-us-quality-core-taskrejected.md) | Profile of TaskRejected for decision support/quality metrics. Defines the core set of elements and extensions for quality rule and measure authors. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [US Quality Core Diagnosis Present on Admission](StructureDefinition-us-quality-core-encounter-diagnosisPresentOnAdmission.md) | Indicator of whether the Encounter diagnosis was present at the time of admission. |
| [US Quality Core Do Not Perform Reason](StructureDefinition-us-quality-core-doNotPerformReason.md) | Indicates the reason the event was not performed. |
| [US Quality Core IsElective](StructureDefinition-us-quality-core-isElective.md) | Indicates whether this is an elective procedure. |
| [US Quality Core Not Done Reason](StructureDefinition-us-quality-core-notDoneReason.md) | Indicates the reason the event was not done. |
| [US Quality Core Not Done Recorded](StructureDefinition-us-quality-core-recorded.md) | Captures the recorded date of the event. |
| [US Quality Core USCDI+ Quality Extension](StructureDefinition-uscdiplusquality.md) | This extension is only used in the US Quality Core Implementation Guide's Profile StructureDefinition elements. |
| [USQualityCore Appropriateness Score](StructureDefinition-us-quality-core-servicerequest-appropriatenessScore.md) | The appropriateness score for the requested action. |
| [USQualityCore Not Done ValueSet](StructureDefinition-us-quality-core-notDoneValueSet.md) | A logical reference (e.g. a reference to ValueSet.url) to a value set/version that identifies a set of possible coded values representing activities that were not requested, ordered, or performed. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Non-Negative Event Status](ValueSet-us-quality-core-non-negative-event-status.md) | This value set defines the set of codes that indicate a non-negated event status (i.e. codes that are not `not-done`) |
| [Non-Negative Immunization Status](ValueSet-us-quality-core-non-negative-immunization-status.md) | This value set defines the set of codes that indicate a non-negated event status for immunization resources (i.e. codes that are not `not-done`) |
| [Non-Negative MedicationAdministration Status](ValueSet-us-quality-core-non-negative-medication-admin-status.md) | This value set defines the set of codes that indicate a non-negated medication administration status (i.e. codes that are not `not-done`) |
| [Non-Negative MedicationDispense Status](ValueSet-us-quality-core-non-negative-medicationdispense-status.md) | This value set defines the set of codes that indicate a non-negated medication dispense status (i.e. codes that are not `declined`) |
| [Non-Negative Observation Status](ValueSet-us-quality-core-non-negative-observation-status.md) | This value set defines the set of codes that indicate a non-negated observation status (i.e. codes that are not `cancelled`) |
| [Non-Negative Task Status](ValueSet-us-quality-core-non-negative-task-status.md) | This value set defines the set of codes that indicate a non-negated task status (i.e. codes that are not `rejected`) |
| [US Quality Core Observation Body Position](ValueSet-us-quality-core-observation-body-position.md) | SNOMED CT code system values descending from the following:'body position finding' 9851009 |
| [USQualityCore Negation Reason Codes](ValueSet-us-quality-core-negation-reason.md) | This value set defines the set of codes that can be used to indicate the reason an action was not taken |
| [USQualityCore Present On Admission Codes](ValueSet-us-quality-core-present-on-admission.md) | Value Set for USQualityCore Present On Admission. |
| [USQualityCore SNOMED CT Dosage Codes](ValueSet-us-quality-core-medication-dose-type.md) | This value set includes all the "Dosages" SNOMED CT codes (i.e. codes with an is-a relationship with 277406006: Dosages). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [10 minute Apgar Heart Rate Observation Screening Assessment Example](Observation-example-screening-assessment-10-minute-apgar-heart-rate.md) | Example of a 10 minute Apgar Heart Rate Observation Screening Assessment |
| [65+ Female patient example](Patient-example-2.md) | 65+ Female patient example |
| [AdverseEvent example](AdverseEvent-example.md) | Example of an allergic reaction adverse event |
| [AllergyIntolerance example](AllergyIntolerance-example.md) | Example of a clinical assessment record of an allergy |
| [AllergyIntolerance refuted example](AllergyIntolerance-example-refuted.md) | Example of a clinical assessment record of an allergy that has been refuted |
| [BodyStructure example](BodyStructure-example.md) | Example of a BodyStructure resource to identify a mass in the spleen |
| [CarePlan example](CarePlan-example.md) | Example of an assessment and care plan for a pregnancy |
| [CareTeam example](CareTeam-example.md) | Example of a CareTeam involved in the delivery of care for a pregnancy |
| [Claim example](Claim-example.md) | Example of a vision claim |
| [ClaimResponse example](ClaimResponse-example.md) | Example of a vision claim response |
| [Communication example](Communication-example.md) | Example of a notification sent to a patient about an abnormal test result |
| [Communication negation example](Communication-negation-example.md) | Example of a notification that failed to be sent to a patient and reason why |
| [CommunicationRequest example](CommunicationRequest-example.md) | Example of a record of request to provide additional information for a claim |
| [Condition Encounter Diagnosis example](Condition-example.md) | Example of a condition encounter diagnosis resource used to record information about a burn of the left ear |
| [Condition Problems Health Concerns example](Condition-health-concern-example.md) | Example of a patient with a condition encounter health concern regarding obesity |
| [Condition example - appendicitis](Condition-appendicitis-example.md) | Example of a condition resource used to record information about an appendicitis |
| [Coverage example](Coverage-example.md) | Example of a coverage resource used to provide information about an individual's specific plan |
| [Date and time of obstetric delivery example](Observation-example-obstetric-delivery.md) | Example of a obstetric delivery datetime Observation |
| [Delivery date estimated example](Observation-example-delivery-date-estimate.md) | Example of a delivery date estimate Observation |
| [Device example](Device-example.md) | Device example for an ECG |
| [DeviceRequest example](DeviceRequest-example.md) | Request to employ a medical device |
| [DeviceRequest negation example](DeviceRequest-negation-example.md) | Example of a request to employ a medical device that was not performed |
| [DeviceRequest negation with code example](DeviceRequest-negation-with-code-example.md) | Example of a request to employ a medical device that was not performed |
| [DeviceUseStatement example](DeviceUseStatement-example.md) | Example of a record of device use by a patient |
| [DiagnosticReportLab example](DiagnosticReport-example.md) | Example of the findings and interpretation of a laboratory diagnostic test |
| [DiagnosticReportNote example](DiagnosticReport-note-example.md) | Example of a DiagnosticReport Note |
| [Encounter example](Encounter-example.md) | Example of an Encounter |
| [Encounter example of emergency visit that escalated into inpatient patient](Encounter-encounter-ed-example.md) | Encounter example of emergency visit that escalated into inpatient patient |
| [Entered-in-error Influenza immunization record example](Immunization-statusreason-example.md) | Example of an entered-in-error influenza immunization record with statusReason |
| [FamilyMemberHistory example](FamilyMemberHistory-example.md) | Example of Family Member History for a patient |
| [Flag example](Flag-example.md) | Warning/Notification when providing care example |
| [Frailty observation example](Observation-example-frailty.md) | Example of a frailty observation measure |
| [Gestation age at birth observation example](Observation-example-gestation.md) | Example of a gestation age at birth observation |
| [Glucose Laboratory Result Observation Example](Observation-laboratory-result-observation-example-blood-glucose.md) | Example of a glucose laboratory result observation |
| [Goal example](Goal-example.md) | Example of weight loss goal/objective for a patient |
| [Heart rate rhythm clinical result observation example](Observation-clinical-result-heart-rate-rhythm.md) | Example of a Heart rate rhythm clinical result observation |
| [Hemodialysis Machine Availability (physical object) Observation Example](Observation-example-nonpatient-hemodialysis-machine.md) | Example of hempdialysis machine availability nonpatient observation |
| [Hospital Bed Availability (physical object) Observation Example](Observation-example-nonpatient-hospital-bed.md) | Example of hospital bed availability nonpatient observation |
| [Hospital Organization example](Organization-example1.md) | Hendricks County Hospital example |
| [ImagingStudy example](ImagingStudy-example.md) | Example of ImagingStudy based on CT imaging study |
| [Immunization example](Immunization-example.md) | Immunization example |
| [Immunization negation example](Immunization-negation-example.md) | Example of immunization that was refused/failed to be administered using value set |
| [Immunization negation with code example](Immunization-negation-example-code.md) | Example of immunization that was refused/failed to be administered using code |
| [ImmunizationEvaluaion example](ImmunizationEvaluation-example.md) | Example of ImmunizationEvaluation |
| [ImmunizationRecommendation example](ImmunizationRecommendation-example.md) | Example of ImmunizationRecommendation for Hepatitis A vaccine |
| [Infant patient example](Patient-infant-example.md) | Infant patient example |
| [Location example](Location-example.md) | Example of Location of a provider - south wing of Mean Joe Greene University Medical Center |
| [Mechanical Ventilator Availability (physical object) Observation Example](Observation-example-nonpatient-mechanical-ventilator.md) | Example of mechanical ventilator availability nonpatient observation |
| [Medication example](Medication-example.md) | Example of Alemtuzumab Medication |
| [MedicationAdministration Cumulative Duration example](MedicationAdministration-cmd-example.md) | Cumulative Medication example of MedicationAdministration |
| [MedicationAdministration example](MedicationAdministration-example.md) | Intravenous example of MedicationAdministration |
| [MedicationAdministration negation example](MedicationAdministration-negation-example.md) | Example of medication not administered using a value set to indicate what was not administered |
| [MedicationAdministration negation with code example](MedicationAdministration-negation-with-code-example.md) | Example of medication not administered using a code to indicate that a particular medication was not administered |
| [MedicationDispense cumulative dose example](MedicationDispense-cmd-example.md) | Cumulative Medication Dispense Example |
| [MedicationDispense example](MedicationDispense-example.md) | Penicillin MedicationDispense Example |
| [MedicationDispense negation example](MedicationDispense-negation-example.md) | Example of medication not dispensed using a value set to indicate the reason |
| [MedicationDispense negation with code example](MedicationDispense-negation-with-code-example.md) | Example of medication not dispensed using a code to indicate the reason |
| [MedicationNotRequested using code example](MedicationRequest-negation-example-code.md) | Example of medication not requested using a code to indicate the reason |
| [MedicationNotRequested using value set example](MedicationRequest-negation-example.md) | Example of medication not requested using a value set to indicate the reason |
| [MedicationRequest Cumulative Duration](MedicationRequest-cmd-example.md) | Cumulative Medication Duration Example |
| [MedicationRequest Patient Reported Example](MedicationRequest-patient-reported-example.md) | Patient Reported Example |
| [MedicationRequest Patient Requester Example](MedicationRequest-patient-requester-example.md) | Patient Requester Example |
| [MedicationRequest Practitioner Ordered Example](MedicationRequest-practitioner-ordered-example.md) | Practitioner Ordered Example |
| [MedicationRequest example](MedicationRequest-example.md) | Penicillin MedicationRequest Example |
| [MedicationStatment example](MedicationStatement-example.md) | Penicillin MedicationStatement Example |
| [Number of full-term births obeservation example](Observation-example-births.md) | Example number of full-term births Observation |
| [Number of parity obeservation example](Observation-example-parity.md) | Example number of parity Observation |
| [Number of pregnancies obeservation example](Observation-example-pregnancies.md) | Example number of pregnancies Observation |
| [Number of preterm births obeservation example](Observation-example-preterm-births.md) | Example number of preterm births Observation |
| [NutrientOrder example](NutritionOrder-example.md) | Example of NutrientOrder for diabetic diet |
| [ODH Observation example](Observation-example-odh.md) | Example of occupational data added to observation measure |
| [Observation example](Observation-example.md) | Example of Decreased Hemoglobin Observation |
| [ObservationCancelled with code example](Observation-negation-with-code-example.md) | Example of observation not done using a code to indicate the reason |
| [ObservationCancelled with value set example](Observation-negation-example.md) | Example of observation not done using a value set to indicate the reason |
| [Organization example](Organization-example.md) | HL7 Organization example |
| [PHQ-9 QuestionnaireResponse Example](QuestionnaireResponse-PHQ-9-example.md) | Example of a PHQ-9 Questionnaire Response |
| [Patient example](Patient-example.md) | Basic Patient example |
| [Practitioner example](Practitioner-example.md) | Referring Practitioner example |
| [PractitionerRole example](PractitionerRole-example.md) | PractitionerRole example |
| [Procedure example](Procedure-example.md) | Appendectomy Procedure example |
| [ProcedureNotDone with code example](Procedure-negation-with-code-example.md) | Example of procedure not done using a code to indicate the reason |
| [ProcedureNotDone with value set example](Procedure-negation-example.md) | Example of procedure not done using a value set to indicate the reason |
| [RelatedPerson example](RelatedPerson-example.md) | Emergency contact example |
| [ServiceNotRequested with code example](ServiceRequest-negation-example-code.md) | Example of service not requested using a code to indicate the reason |
| [ServiceNotRequested with value set example](ServiceRequest-negation-example.md) | Example of service not requested using a value set to indicate the reason |
| [ServiceRequest Myringotomy Procedure example](ServiceRequest-myringotomy-example.md) | ServiceRequest for Myringotomy Procedure example |
| [ServiceRequest appropriateness example](ServiceRequest-appropriateness-example.md) | ServiceRequest appropriateness example |
| [ServiceRequest elective example](ServiceRequest-elective-example.md) | Elective procedure ServiceRequest example |
| [ServiceRequest example](ServiceRequest-example.md) | Request for Appendectomy ServiceRequest example |
| [Substance example](Substance-example.md) | Honey Bee venom (apitoxin) Substance example |
| [Task example](Task-example.md) | Task example |
| [TaskRejected with code example](Task-negation-with-code-example.md) | Example of task not done using a code to indicate the reason |
| [TaskRejected with value set example](Task-negation-example.md) | Example of task not done using a value set to indicate the reason |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [Input Expansion Parameters](Parameters-manifest.md) | The input expansion parameters resource for this implementation guide, specifying SNOMED Edition and version. This resource will be contained within the published implementation guide with all pinned references. |

