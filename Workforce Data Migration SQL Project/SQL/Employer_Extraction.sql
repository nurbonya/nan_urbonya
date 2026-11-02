/*
===========================================================
Project: Employer Analytics & Profile Consolidation
Author: Nan Urbonya

Purpose:
Demonstrate advanced SQL techniques used for business
intelligence reporting, data integration, and employer
profile analysis.

Note:
This query has been anonymized for portfolio purposes.
Table names, column names, and business logic have been
modified to protect sensitive information while preserving
the overall structure and SQL concepts.
===========================================================
*/

SELECT

    org.OrganizationID,
    org.OrganizationName,

    CASE
        WHEN org.WebsiteURL IS NULL THEN NULL
        WHEN org.WebsiteURL LIKE 'http://%' THEN
            CONCAT(
                'https://',
                SUBSTRING(org.WebsiteURL, 8, LEN(org.WebsiteURL))
            )
        WHEN org.WebsiteURL LIKE 'https://%' THEN
            org.WebsiteURL
        ELSE
            CONCAT('https://', org.WebsiteURL)
    END AS StandardizedWebsite,

    REPLACE(contact.PrimaryPhone, '-', '') AS PhoneNumber,

    CASE
        WHEN org.IdentifierType = 'A' THEN 'Business ID'
        WHEN org.IdentifierType = 'B' THEN 'Registration ID'
        ELSE 'Other'
    END AS IdentifierType,

    org.IdentifierValue,

    loc.AddressLine1,
    loc.City,
    loc.StateCode,
    LEFT(loc.PostalCode, 5) AS PostalCode,
    loc.CountryCode,
    geo.RegionName,

    org.TradeName,

    loc.SiteName,
    loc.AddressLine1 AS SiteAddress,
    loc.City AS SiteCity,
    geo.RegionName AS SiteRegion,
    loc.StateCode AS SiteState,
    LEFT(loc.PostalCode, 5) AS SitePostalCode,
    loc.CountryCode AS SiteCountry,

    industry.IndustryCode,

    admin.FirstName,
    admin.LastName,
    admin.EmailAddress,
    admin.PhoneNumber,
    admin.JobTitle

FROM OrganizationTable org

LEFT JOIN LocationTable loc
    ON org.OrganizationID = loc.OrganizationID
    AND loc.IsPrimarySite = 1

LEFT JOIN GeographyLookup geo
    ON loc.RegionCode = geo.RegionCode

LEFT JOIN IndustryLookup industry
    ON org.IndustryID = industry.IndustryID

LEFT JOIN OrganizationAdministrator admin
    ON org.OrganizationID = admin.OrganizationID
    AND admin.IsPrimaryContact = 1

LEFT JOIN ContactTable contact
    ON contact.ContactID = admin.ContactID

WHERE

    org.OrganizationStatus = 'Active'

    AND (

        EXISTS (

            SELECT 1

            FROM UserActivity ua

            WHERE ua.OrganizationID = org.OrganizationID
            AND ua.LastActivityDate >= DATEADD(
                DAY,
                -120,
                GETDATE()
            )

        )

        OR

        EXISTS (

            SELECT 1

            FROM OpportunityTable opp

            WHERE opp.OrganizationID = org.OrganizationID
            AND opp.CloseDate >= DATEADD(
                DAY,
                -120,
                GETDATE()
            )

        )

    );