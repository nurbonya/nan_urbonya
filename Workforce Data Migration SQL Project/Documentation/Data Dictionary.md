# Data Dictionary

## Project Overview

This project demonstrates advanced SQL techniques used to create reporting-ready datasets from multiple relational data sources. The fields described below represent a generalized workforce and employer analytics solution created for portfolio purposes.

---

# Job Order Dataset

| Field Name | Description |
|------------|-------------|
| JobID | Unique identifier for a job posting |
| OrganizationID | Unique identifier for the employer |
| PositionTitle | Title of the position |
| OrganizationName | Name of the organization |
| StandardizedCode | Standard occupational classification code |
| ApplyMethod | Available application methods |
| ApplyURL | Online application link |
| OpenDate | Date the position became available |
| CloseDate | Date the position closes |
| EmploymentType | Full-time, Part-time, Contract, etc. |
| ScheduleType | Work schedule information |
| PositionSummary | Position description and summary |
| RequirementDescription | Education or qualification requirements |
| SiteName | Worksite location name |
| AddressLine | Physical address |
| City | City where the position is located |
| Region | County or regional designation |
| StateCode | State abbreviation |
| CountryCode | Country code |
| ZipCode | Postal code |
| CompensationType | Hourly, Monthly, or Annual |
| MinimumSalary | Lower end of salary range |
| MaximumSalary | Upper end of salary range |
| EmployerBenefits | Benefits offered by the organization |
| PositionBenefits | Benefits specific to the position |
| SpecialProgram | Participation in workforce or special initiatives |
| StatusDescription | Current status of the posting |

---

# Employer Dataset

| Field Name | Description |
|------------|-------------|
| OrganizationID | Unique employer identifier |
| OrganizationName | Company or organization name |
| StandardizedWebsite | Employer website URL |
| PhoneNumber | Primary business phone number |
| IdentifierType | Business registration type |
| IdentifierValue | Registration number or identifier |
| AddressLine1 | Street address |
| City | City |
| StateCode | State abbreviation |
| PostalCode | Zip code |
| CountryCode | Country |
| RegionName | County or geographic region |
| TradeName | Alternate business name |
| SiteName | Worksite or branch name |
| SiteAddress | Worksite address |
| SiteCity | Worksite city |
| SiteRegion | Worksite region |
| SiteState | Worksite state |
| SitePostalCode | Worksite postal code |
| SiteCountry | Worksite country |
| IndustryCode | Industry classification |
| FirstName | Primary contact first name |
| LastName | Primary contact last name |
| EmailAddress | Primary contact email |
| PhoneNumber | Primary contact phone |
| JobTitle | Primary contact title |

---

## Notes

- Field names have been generalized for portfolio publication.
- Sensitive information, business rules, and proprietary structures have been removed.
- The purpose of this project is to demonstrate SQL development and business intelligence techniques rather than expose production systems.
