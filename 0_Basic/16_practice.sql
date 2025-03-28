SELECT
    jp.job_title,
    skillsd.skills,
    jp.job_health_insurance,
    jp.job_location
FROM job_postings_fact AS jp
INNER JOIN skills_job_dim AS skills_job
    ON jp.job_id = skills_job.job_id
INNER JOIN skills_dim AS skillsd
    ON skills_job.skill_id = skillsd.skill_id
WHERE job_location LIKE '%New York%'
    AND job_health_insurance IS TRUE