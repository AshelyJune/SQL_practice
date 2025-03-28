/*
top 10 paying DA jobs, able remote
no null salary
*/

SELECT salary_year_avg,
    job_title,
    job_id,
    company_dim.name
FROM job_postings_fact

LEFT JOIN company_dim 
ON job_postings_fact.company_id= company_dim.company_id


WHERE job_title_short='Data Analyst' AND
        salary_year_avg>0 AND
        job_work_from_home = TRUE
ORDER BY salary_year_avg DESC
LIMIT 10;