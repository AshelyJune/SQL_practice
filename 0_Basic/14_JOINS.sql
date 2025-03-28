SELECT
    jp.job_id,
    jp.job_title_short,
    company.name
FROM job_postings_fact AS jp

LEFT JOIN company_dim AS company
    ON jp.company_id = company.company_id