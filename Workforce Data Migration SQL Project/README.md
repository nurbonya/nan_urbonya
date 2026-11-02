# Workforce Data Migration & Business Intelligence with SQL

## Overview

This project demonstrates advanced SQL development skills through the design of data extraction and transformation solutions used during a workforce system platform migration. The objective was to consolidate employer and job order data from multiple source tables, apply business rules, standardize fields, and generate reporting-ready datasets.

The project consists of two production-level SQL queries developed to support data conversion, validation, reporting, and business intelligence activities.

---

## Project Objectives

- Extract and transform workforce system data for platform migration.
- Consolidate information from multiple relational database tables.
- Standardize and validate data elements.
- Create reporting-ready datasets.
- Support workforce analytics and operational reporting.
- Improve data quality and consistency across systems.

---

## Technologies Used

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)
- Data Migration & Conversion
- Business Intelligence Reporting

---

## SQL Skills Demonstrated

### Advanced Query Development
- Complex multi-table joins
- LEFT JOIN operations
- OUTER APPLY logic
- Data transformation techniques
- Conditional business rules

### Data Engineering
- Data cleansing
- Data standardization
- Data validation
- Data mapping
- Reporting dataset creation

### Advanced SQL Functions
- STRING_AGG()
- STRING_SPLIT()
- CONCAT()
- CONCAT_WS()
- CASE Statements
- CAST()
- SUBSTRING()
- LTRIM() / RTRIM()

### Business Intelligence
- Workforce Analytics
- Labor Market Data
- Employer Analysis
- Job Order Analysis
- Benefits Analysis
- Geographic Analysis

---

# Project 1: Job Order Data Extraction

## Business Problem

As part of a workforce platform migration initiative, business users required a consolidated view of active job orders that included employer information, application methods, compensation details, benefits, location data, and workforce participation indicators.

The source information existed across multiple relational tables, requiring extensive transformation and business rule implementation.

---

## Solution

Developed an advanced SQL query that integrates job order information from numerous source tables and converts raw transactional data into a business-friendly reporting structure.

### Key Features

- Retrieves active job postings
- Maps employer information
- Formats O*NET-SOC occupation codes
- Standardizes application methods
- Determines application URLs
- Extracts compensation information
- Aggregates employer benefits
- Aggregates job-specific benefits
- Identifies veteran preference positions
- Flags second-chance employment opportunities
- Integrates geographic location information
- Applies business validation rules

---

## Data Sources Utilized

| Table | Purpose |
|---------|---------|
| joborders | Core job posting information |
| emp | Employer information |
| empworksite | Location details |
| edulevel | Education requirements |
| tbl_eidA1 | Address information |
| georegion | Geographic mapping |
| jobordersbenefits | Job benefits |
| benefits | Benefit descriptions |
| jostatus | Job posting status |

---

## Business Questions Answered

### Workforce Analysis

- Which employers currently have active job openings?
- What positions are available by location?
- What salary ranges are being offered?
- Which occupations are in demand?
- Which positions provide benefits?

### Program Analysis

- Which employers support veterans?
- Which employers offer second-chance employment opportunities?
- What application methods are available to job seekers?

---

## Sample Output Fields

| Field |
|---------|
| JobID |
| EmployerID |
| JobTitle |
| CompanyName |
| ONETSOCCode |
| ApplyMethod |
| ApplyURL |
| OpenDate |
| CloseDate |
| EmploymentType |
| CompensationType |
| CompensationMin |
| CompensationMax |
| EmployerBenefits |
| JobBenefits |
| Veterans |
| ReEntryFriendly |
| JobStatus |

---

# Project 2: Employer Data Extraction

## Business Problem

Employer records required standardization and validation before migration into the new workforce platform. Information was distributed across multiple tables and required transformation to support reporting and operational processes.

---

## Solution

Developed a companion SQL extraction process that consolidates employer data into a standardized and reporting-ready format.

### Key Features

- Employer profile extraction
- Company information standardization
- Contact information consolidation
- Website and application URL mapping
- Benefits analysis
- Data quality validation
- Migration readiness support

---

## Business Questions Answered

- Which employers are actively recruiting?
- Which employers provide benefits?
- What industries are represented?
- Which employers participate in workforce programs?
- Which employers support second-chance hiring initiatives?

---

# Technical Highlights

## Data Transformation

Implemented business rules using CASE statements to transform raw source data into meaningful business information.

Examples include:

- Compensation type classification
- Application method standardization
- Benefits mapping
- Veteran preference indicators
- Re-entry employer identification

---

## Data Aggregation

Used STRING_AGG() to combine related records into reporting-friendly fields.

Examples:

- Employer benefits
- Job benefits
- Application methods

---

## Data Cleansing

Implemented standardization techniques to improve match rates and data quality:

- Character cleanup
- Whitespace removal
- Null handling
- Format normalization
- Data validation

---

## Performance Considerations

The queries were designed to:

- Minimize duplicated records
- Create reporting-ready outputs
- Reduce manual data preparation
- Support migration validation efforts
- Improve downstream reporting efficiency

---

# Project Results

### Business Impact

- Improved migration readiness.
- Reduced manual reporting effort.
- Increased consistency of workforce data.
- Enhanced reporting capabilities.
- Supported validation and quality assurance activities.

### Technical Impact

- Automated extraction of complex workforce datasets.
- Standardized employer and job order reporting.
- Integrated multiple data sources into a unified output.
- Simplified business-user access to workforce information.

---

# Repository Structure

```text
Workforce-Data-Migration-SQL/
│
├── README.md
│
├── SQL/
│   ├── JobOrder_Extraction.sql
│   └── Employer_Extraction.sql
│
├── Documentation/
│   ├── Data_Dictionary.md
│   ├── Business_Questions.md
│   └── Query_Logic.md
│
└── Screenshots/
    ├── JobOrder_Query.png
    ├── Employer_Query.png
    └── Sample_Output.png
```

---

# Key Takeaways

This project showcases the application of advanced SQL techniques to solve real-world business problems involving data conversion, reporting, and workforce analytics.

Through the development of complex extraction and transformation processes, the project highlights expertise in:

- Advanced SQL Development
- Business Intelligence
- Workforce Analytics
- Data Migration
- Data Quality Management
- Relational Database Design
- Reporting & Analytics
- Enterprise Data Transformation

---

## Author

**Nan Urbonya**

Data Analytics | Workforce Analytics | Business Intelligence | SQL Development

Passionate about transforming complex data into actionable insights that support workforce development, operational decision-making, and business performance.
