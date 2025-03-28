SELECT 
    COUNT(job_id) AS job_count,
    --job_title_short AS title,
    --job_location AS location,
    --job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM 
    job_postings_fact

WHERE job_title_short = 'Data Analyst'
GROUP BY date_month
ORDER BY job_count DESC