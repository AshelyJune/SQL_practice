SELECT 
    job_id,
    job_title_short,
    job_via,
    salary_year_avg,
    salary_hour_avg
    job_location
FROM
    job_postings_fact

WHERE salary_hour_avg BETWEEN 30 AND 60
      AND job_title_short = 'Data Analyst'
        AND
              job_location in ('United States', 'Anywhere')
ORDER BY salary_hour_avg DESC
