# Workforce Data Migration & Business Intelligence with SQL

## Project Overview

This project demonstrates SQL-based data extraction, transformation, and validation work completed during a workforce system modernization initiative.

A new workforce management platform was implemented to replace a legacy workforce system. As part of the migration effort, employer records, job orders, workforce services, and related business data needed to be converted from the old platform into a new data model.

The challenge was that the legacy and target systems did not use the same:

- Data structures
- Field definitions
- Business rules
- Reporting requirements

SQL was used to transform and standardize source data while supporting migration validation and reporting preparation.

---

## Business Problem

The organization was transitioning from a legacy workforce platform to a newly implemented workforce management system.

Data requiring migration included:

- Employer records
- Job orders
- Employer services
- Organization information
- Contact information
- Benefits information
- Reporting attributes

Because the target system used different business definitions and data structures, migration required extensive transformation logic rather than simple data transfer.

---

## My Contribution

I developed SQL extraction and transformation logic to support migration and reporting preparation efforts.

Key responsibilities included:

- Analyzing source and target data structures
- Creating data extraction queries
- Developing business-rule mappings
- Standardizing employer and job-order information
- Preparing reporting-ready datasets
- Supporting data validation and quality review

---

## Repository Structure

/SQL
- Employer_Extraction.sql
- JobOrder_Extraction.sql

/Documentation
- Business_Questions.md
- Data_Dictionary.md

---

## SQL Projects

### Employer Extraction

Creates a migration-ready employer dataset containing:

- Organization information
- Address data
- Industry classifications
- Administrator contacts
- Active organization filtering

Key SQL techniques:

- CASE logic
- Data cleansing
- String transformations
- Conditional filtering
- EXISTS subqueries
- Multi-table joins

### Job Order Extraction

Creates a reporting-ready job-order dataset containing:

- Position information
- Employer information
- Education requirements
- Compensation details
- Benefits aggregation
- Job application methods

Key SQL techniques:

- LEFT JOINs
- OUTER APPLY
- STRING_AGG
- CASE statements
- COALESCE
- Reporting filters

---

## Example Business Rule

### Validation

Validation included:

- Row-count comparisons
- Null value review
- Spot-checking source records

---

## Data Validation Approach

Validation activities included:

### Record Counts

Source and transformed record counts were compared to identify missing records.

### Duplicate Detection

Organization and job-order identifiers were reviewed for duplicate records.

### Required Fields Review

Critical reporting fields were checked for missing values.

### Join Validation

Relationships between organizations, locations, contacts, and benefits were reviewed after transformation.

### Mapping Validation

Business-rule outputs were reviewed to identify unmapped or unexpected values.

---

## Anonymization Notice

This repository contains anonymized representations of production SQL work.

To protect confidential information:

- Table names have been modified
- Field names have been modified
- Business terminology has been generalized
- Sample outputs are illustrative only

The SQL techniques and transformation patterns reflect real-world data migration work.

---

## Skills Demonstrated

- SQL Development
- Data Migration
- Data Validation
- Business Intelligence
- Reporting Preparation
- Data Cleansing
- Data Transformation
- Workforce Analytics
- Data Quality Review
