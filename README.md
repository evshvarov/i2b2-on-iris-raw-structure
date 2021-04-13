# Proof-Of-Concept of I2B2 using IRIS as backend

## Executive Summary

InterSystems IRIS platform is a leading technical infrastructure used in production and research settings for Healthcare and Life Sciences.

The i2b2/Transmart community has implemented its query builder and underlying i2b2 core on top of three mainstream data sources - MS SQL Server, Oracle and Postgres.

This POC is focused on assessment and gap analysis for adding InterSystems IRIS as an additional data source. This would allow i2b2 clients to take advantage of the IRIS high-performance data querying capabilities as well as multitude of other features and functionality offered by IRIS.

## What & Why

### Introduction: POC Goals

    * Investigate compatibility of the i2b2 Query builder, i2b2 web and i2b2 core with IRIS backend and identify gaps preventing usage of the i2b2 Web client with IRIS back end.
    * Determine steps necessary to mitigate compatibility gaps for i2b2 with IRIS backend.
    * Develop a data migration path from i2b2- to IRIS.
    * Execute direct SQL queries against i2b2 data in IRIS and achieve equivalence of the results with the results in the relational DB (Postgres) within limited POC scope. Capture and document the differences as well as steps to expand to a larger scope.
    * Implement an infrastructure for exporting i2b2 patient data as FHIR resources, map and export sample resources (e.g. Patient, Meds) based on the data in the i2b2 instance.
    * Document findings and publish to InterSystems open exchange.

### How it was done

Steps creating the project

    1. Set up Linux VM.
    2. Install and configure InterSystems IRIS for Health 2020.3 or higher on this VM.
    3. Install and configure a reference i2b2 instance on the POC Linux VM with Postgres DB as a data source with a demo patient data set
    4. Configure and test i2b2 Web client (query builder) with the Postgres DB as a data source.
    5. Migrate i2b2 schema and demo patient data from the reference i2b2 instance into IRIS.
    6. Create and execute several representative identical queries in IRIS SQL tool and in a Postgres SQL UI (PGAdmin). Compare results and document difference between I2B2 and IRIS.
    7. Create and implement I2B2 - FHIR mapping for two representative FHIR resources (e.g. Patient, MedicationRequest) and demonstrate FHIR export for a few patients.
    8. Create IRIS production to export patient data from IRIS as FHIR resources (e.g. by patient_id).
    9. Document the process of implementation of I2B2 on IRIS.
    10. Publish the implementation and documentation to InterSystems Open Exchange.

### More info

For data migration, POC queries and diagrams, see `Documentation i2b2 on Iris.pdf`
