-- remote job per skill
-- top 5 skills by demand in remote jobs
-- include skill_id, name, and count of postings requiring that skills

WITH IDcount AS(


SELECT skilljob.skill_id,
    COUNT(skilljob.skill_id) AS skill_count
FROM skills_job_dim AS skilljob
WHERE job_id in(

SELECT jp.job_id
FROM job_postings_fact AS jp
WHERE job_work_from_home = true AND job_title_short='Data Analyst'
)
GROUP BY skilljob.skill_id

)

SELECT skills_dim.skills,
    IDcount.*
FROM skills_dim
LEFT JOIN IDcount ON IDcount.skill_id = skills_dim.skill_id

ORDER BY skill_count DESC