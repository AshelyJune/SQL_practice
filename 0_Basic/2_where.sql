SELECT 
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst' --only DA
--groupby column
--having condition
ORDER BY
    salary_year_avg DESC
    /*
    comment
    */