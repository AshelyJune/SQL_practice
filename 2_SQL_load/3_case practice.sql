SELECT  
    COUNT(job_id) AS number_of_jobs,
    CASE
    WHEN salary_year_avg <50000 THEN 'LOW'
    WHEN salary_year_avg BETWEEN 50000 AND 100000 THEN 'STANDARD'
    ELSE 'HIGH'
    END AS salary_category


FROM job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY salary_category;
