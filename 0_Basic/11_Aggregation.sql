SELECT
    COUNT(job_title_short) AS count_job,
    AVG(salary_hour_avg) AS avg_hourly,
    MIN(salary_hour_avg) AS min_hourly,
    MAX(salary_hour_avg) AS max_hourly,
    job_location

FROM job_postings_fact
GROUP BY job_location

HAVING  COUNT(job_title_short)>100
-- CANT USE WHERE IN AGGREGATION, NEED TO USE HAVING
ORDER BY avg_hourly
