/*
===========================================================
Project: Workforce Data Analytics
Author: Nan Urbonya
Purpose: Demonstrate advanced SQL querying, data integration,
data transformation, and reporting techniques.

NOTE:
This query has been anonymized for portfolio purposes.
Table names, column names, and business rules have been
modified to protect sensitive information.
===========================================================
*/

SELECT
    p.RecordID AS JobID,
    p.OrganizationID,
    p.PositionTitle,

    org.OrganizationName,

    CONCAT(
        SUBSTRING(p.ClassificationCode,1,2),
        '-',
        SUBSTRING(p.ClassificationCode,3,4)
    ) AS StandardizedCode,

    CONCAT_WS(' | ',
        CASE WHEN p.ApplicationMethod LIKE '%A%' THEN 'Email' END,
        CASE WHEN p.ApplicationMethod LIKE '%B%' THEN 'Phone' END,
        CASE WHEN p.ApplicationMethod LIKE '%C%' THEN 'Website' END
    ) AS ApplyMethod,

    COALESCE(
        p.ApplicationURL,
        org.CareerPageURL,
        org.WebsiteURL
    ) AS ApplyURL,

    CAST(p.OpenDate AS DATE) AS OpenDate,
    CAST(p.CloseDate AS DATE) AS CloseDate,

    p.EmploymentType,
    p.ScheduleType,

    p.PositionSummary,

    edu.RequirementDescription,

    loc.SiteName,
    loc.AddressLine,
    loc.City,
    loc.Region,
    loc.StateCode,
    loc.CountryCode,
    LEFT(loc.PostalCode,5) AS ZipCode,

    CASE
        WHEN p.PayFrequency = 'H' THEN 'Hourly'
        WHEN p.PayFrequency = 'M' THEN 'Monthly'
        WHEN p.PayFrequency = 'Y' THEN 'Annual'
        ELSE 'Other'
    END AS CompensationType,

    p.MinimumSalary,
    p.MaximumSalary,

    empBenefits.BenefitList AS EmployerBenefits,
    posBenefits.BenefitList AS PositionBenefits,

    CASE
        WHEN p.SpecialProgramFlag = 1 THEN 'Yes'
        ELSE 'No'
    END AS SpecialProgram,

    stat.StatusDescription

FROM PositionTable p

LEFT JOIN OrganizationTable org
    ON p.OrganizationID = org.OrganizationID

LEFT JOIN LocationTable loc
    ON p.LocationID = loc.LocationID

LEFT JOIN EducationLookup edu
    ON p.EducationCode = edu.EducationCode

LEFT JOIN StatusLookup stat
    ON p.StatusCode = stat.StatusCode

/* Example of aggregation logic */

OUTER APPLY (

    SELECT STRING_AGG(
        b.BenefitDescription,
        ' | '
    ) AS BenefitList

    FROM PositionBenefits pb

    JOIN BenefitLookup b
        ON pb.BenefitCode = b.BenefitCode

    WHERE pb.RecordID = p.RecordID

) posBenefits

OUTER APPLY (

    SELECT STRING_AGG(
        b.BenefitDescription,
        ' | '
    ) AS BenefitList

    FROM OrganizationBenefits ob

    JOIN BenefitLookup b
        ON ob.BenefitCode = b.BenefitCode

    WHERE ob.OrganizationID = org.OrganizationID

) empBenefits

/* Example of reporting filters */

WHERE
      p.PositionTitle IS NOT NULL
  AND org.OrganizationName IS NOT NULL
  AND loc.City IS NOT NULL
  AND loc.StateCode IS NOT NULL
  AND stat.StatusDescription = 'Active';