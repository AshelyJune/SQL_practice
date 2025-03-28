SELECT 
    job_id AS ID, 
    job_title_short AS Title,
    job_title ,
    salary_year_avg AS Salary,
    salary_hour_avg,
    jpf.job_location AS Location
FROM
    job_postings_fact AS jpf
WHERE (job_title_short LIKE '%Data%' OR job_title_short LIKE '%Business%')
    AND job_title_short LIKE '%Analyst%'
    AND job_title_short NOT LIKE '%Senior%'