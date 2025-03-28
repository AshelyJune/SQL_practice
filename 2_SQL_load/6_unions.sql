SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION ALL -- return EVERYTHING includes duplicates

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feburary_jobs


UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs