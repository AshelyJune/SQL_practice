SELECT
    job_id,
    job_title_short,
    job_location,
    job_via
FROM job_postings_fact

WHERE job_title_short = 'Data Engineer'