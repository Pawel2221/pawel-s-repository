//Merging CRM data with Google Analytics 4 (BigQuery) with the goal of optimizing marketing campaigns on Accepted_application parameter

SELECT
  utm_source,
  utm_medium,
  Application,
  Accepted_application,
  value,
FROM
  `qwiklabs-gcp-02-2ac57b8d790f.bqtest.CRM_data`
LEFT JOIN
  `qwiklabs-gcp-02-2ac57b8d790f.bqtest.Analytics_data`
ON
  crm_form_id = form_id
  AND crm_user_id = user_id
WHERE utm_source IS NULL THEN COUNT(utm_source AS not_set)
LIMIT
  10
