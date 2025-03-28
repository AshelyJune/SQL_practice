SELECT 
    job_id,
    job_title_short,
    job_title,
    salary_year_avg,
    salary_hour_avg
    job_location
FROM
    job_postings_fact
WHERE
    job_title_short LIKE '%Analyst%'