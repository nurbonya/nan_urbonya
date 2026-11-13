# Data Dictionary

## Published Tables

The public repository uses anonymized table and column names.

| Table Name | Description |
|------------|-------------|
| OrganizationTable | Employer and organization information |
| LocationTable | Organization and job locations |
| ContactTable | Contact information |
| OrganizationAdministrator | Primary organization contacts |
| IndustryLookup | Industry classifications |
| GeographyLookup | Region lookup data |
| UserActivity | Organization activity tracking |
| OpportunityTable | Business opportunity records |
| PositionTable | Job order records |
| EducationLookup | Education requirements |
| StatusLookup | Job order statuses |
| PositionBenefits | Job-level benefits |
| OrganizationBenefits | Employer-level benefits |
| BenefitLookup | Benefit descriptions |

---

## Employer Extraction Output Fields

| Field | Description |
|---------|-------------|
| OrganizationID | Unique organization identifier |
| OrganizationName | Employer name |
| StandardizedWebsite | Cleaned website URL |
| PhoneNumber | Standardized phone number |
| IdentifierType | Business identifier type |
| IdentifierValue | Business identifier |
| AddressLine1 | Primary address |
| City | City |
| StateCode | State |
| PostalCode | ZIP code |
| RegionName | Geographic region |
| TradeName | Business trade name |

---

## Job Order Extraction Output Fields

| Field | Description |
|----------|-------------|
| JobID | Job order identifier |
| OrganizationID | Employer identifier |
| PositionTitle | Job title |
| StandardizedCode | Formatted classification code |
| ApplyMethod | Application methods |
| ApplyURL | Application URL |
| OpenDate | Position opening date |
| CloseDate | Position closing date |
| EmploymentType | Employment category |
| ScheduleType | Work schedule |
| RequirementDescription | Education requirement |
| CompensationType | Salary frequency |
| EmployerBenefits | Employer provided benefits |
| PositionBenefits | Position-specific benefits |
| StatusDescription | Current status |
