SELECT 
    job_id AS ID, 
    job_title_short,
    job_title AS Title,
    salary_year_avg,
    salary_hour_avg,
    jpf.job_location AS Location
FROM
    job_postings_fact AS jpf

LIMIT 100;