SELECT
    job_id,
    job_title,
    salary_year_avg,
    salary_hour_avg
FROM job_postings_fact

WHERE salary_hour_avg IS NULL AND
        salary_year_avg IS NULL