SELECT
    jp.job_title,
    company.name
    
From job_postings_fact AS jp

LEFT JOIN company_dim AS company
    on jp.company_id = company.company_id
WHERE jp.job_title LIKE '%Data_Scientist%'