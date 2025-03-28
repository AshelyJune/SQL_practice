SELECT
    quarter1_job.job_title_short,
    quarter1_job.job_location,
    quarter1_job.job_posted_date::DATE,
    quarter1_job.salary_year_avg
FROM(
    SELECT *
    FROM january_jobs
    UNION ALL
    SELECT *
    FROM feburary_jobs
    UNION ALL
    SELECT *
    FROM march_jobs
    ) AS quarter1_job
WHERE quarter1_job.salary_year_avg>70000
   -- AND quarter1_job.job_title_short ='Data Analyst'
ORDER BY quarter1_job.salary_year_avg DESC