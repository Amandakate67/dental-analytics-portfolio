-- AR Aging Report — Pending Insurance Claims Over 30 Days
-- Database: TreatmentAnalytics
-- Purpose: Identifies pending insurance claims by aging bucket
--          to prioritize collections and follow-up
-- Author: Amanda Thurman | github.com/Amandakate67
-- Note: All data simulated for portfolio purposes

WITH outstanding_claims AS (
    SELECT
        ic.patient_id,
        ic.insurance_carrier,
        ic.claim_date,
        ic.billed_amount,
        ic.claim_status,
        DATEDIFF(day, ic.claim_date, GETDATE()) AS days_outstanding,
        ic.billed_amount - ic.insurance_paid AS amount_still_owed
    FROM insurance_claims ic
    WHERE ic.claim_status = 'Pending'
)
SELECT
    pt.first_name,
    pt.last_name,
    oc.insurance_carrier,
    oc.claim_date,
    oc.billed_amount,
    oc.amount_still_owed,
    oc.days_outstanding,
    CASE WHEN oc.days_outstanding BETWEEN 31 AND 60
              THEN '31-60 Days'
         WHEN oc.days_outstanding BETWEEN 61 AND 90
              THEN '61-90 Days'
         ELSE '90+ Days'
    END AS aging_bucket
FROM outstanding_claims oc
INNER JOIN patients pt ON oc.patient_id = pt.patient_id
WHERE oc.days_outstanding > 30
ORDER BY oc.days_outstanding DESC;
