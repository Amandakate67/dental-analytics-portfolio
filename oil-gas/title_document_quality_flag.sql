-- Title Document Quality Flag
-- Database: OilGasAnalytics
-- Purpose: Identifies chain of title issues including missing grantors,
--          missing grantees, and defective document status
-- Author: Amanda Thurman | github.com/Amandakate67

SELECT
    td.document_id,
    td.document_type,
    td.grantor,
    td.grantee,
    td.recording_date,
    td.document_status,
    CASE WHEN td.grantor IS NULL THEN 'Missing Grantor'
         WHEN td.grantee IS NULL THEN 'Missing Grantee'
         WHEN td.document_status IN ('Defective','Pending','Incomplete')
              THEN 'Needs Review'
         ELSE 'Clean'
    END AS chain_of_title_flag
FROM dbo.og_title_documents td
ORDER BY chain_of_title_flag DESC;
