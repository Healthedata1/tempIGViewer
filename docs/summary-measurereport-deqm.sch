<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MeasureReport
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MeasureReport</sch:title>
    <sch:rule context="f:MeasureReport">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-reportingVendor']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-reportingVendor': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-certificationIdentifier']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-certificationIdentifier': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 0">subject: maximum cardinality of 'subject' is 0</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:reporter) &gt;= 1">reporter: minimum cardinality of 'reporter' is 1</sch:assert>
      <sch:assert test="count(f:group) &gt;= 1">group: minimum cardinality of 'group' is 1</sch:assert>
      <sch:assert test="count(f:evaluatedResource) &lt;= 0">evaluatedResource: maximum cardinality of 'evaluatedResource' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport</sch:title>
    <sch:rule context="f:MeasureReport">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="not(f:kind/@value='data-collection') or not(exists(f:group))">Stratifiers SHALL be either a single criteria or a set of criteria components (inherited)</sch:assert>
      <sch:assert test="not(f:kind/@value='data-collection') or not(exists(f:group))">Measure Reports used for data collection SHALL NOT communicate group and score information (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.extension</sch:title>
    <sch:rule context="f:MeasureReport/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:extension</sch:title>
    <sch:rule context="f:MeasureReport/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:period</sch:title>
    <sch:rule context="f:MeasureReport/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.period</sch:title>
    <sch:rule context="f:MeasureReport/f:period">
      <sch:assert test="f:start[matches(^([0-9]{4})(-)(1[0-2]|0[1-9])-(3[01]|0[1-9]|[12][0-9]))] and end.matches[(^([0-9]{4})(-)(1[0-2]|0[1-9])-(3[01]|0[1-9]|[12][0-9]))]">Date precision SHALL  be at least to day ( YYYY-MM-DD )</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group</sch:title>
    <sch:rule context="f:MeasureReport/f:group">
      <sch:assert test="count(f:population) &gt;= 1">population: minimum cardinality of 'population' is 1</sch:assert>
      <sch:assert test="count(f:measureScore) &gt;= 1">measureScore: minimum cardinality of 'measureScore' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.group</sch:title>
    <sch:rule context="f:MeasureReport/f:group">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:population</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:population">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:count) &gt;= 1">count: minimum cardinality of 'count' is 1</sch:assert>
      <sch:assert test="count(f:subjectResults) &lt;= 0">subjectResults: maximum cardinality of 'subjectResults' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.group.population</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:population">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:measureScore</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:measureScore">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-alternateScoreType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-alternateScoreType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 1">comparator: maximum cardinality of 'comparator' is 1</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:stratifier</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.group.stratifier</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.group.stratifier.stratum</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier/f:stratum">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.group.stratifier.stratum.component</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier/f:stratum/f:component">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:stratifier/f:stratum/f:population</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier/f:stratum/f:population">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:count) &gt;= 1">count: minimum cardinality of 'count' is 1</sch:assert>
      <sch:assert test="count(f:subjectResults) &lt;= 0">subjectResults: maximum cardinality of 'subjectResults' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MeasureReport.group.stratifier.stratum.population</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier/f:stratum/f:population">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MeasureReport/f:group/f:stratifier/f:stratum/f:measureScore</sch:title>
    <sch:rule context="f:MeasureReport/f:group/f:stratifier/f:stratum/f:measureScore">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-alternateScoreType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-alternateScoreType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 1">comparator: maximum cardinality of 'comparator' is 1</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
