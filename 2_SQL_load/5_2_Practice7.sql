--Inner join to ignore the values that doesnt have value

WITH remoteskills AS (

SELECT
    skill_id,
    COUNT(*) AS skill_count
FROM skills_job_dim AS skillstojob
INNER JOIN job_postings_fact AS jp ON jp.job_id = skillstojob.job_id
WHERE jp.job_work_from_home = true
GROUP BY skill_id
)

SELECT
    skill.skill_id,
    skill.skills AS skill_name,
    skill_count

FROM remoteskills
INNER JOIN skills_dim AS skill ON skill.skill_id = remoteskills.skill_id

ORDER BY skill_count DESC
LIMIT 5;