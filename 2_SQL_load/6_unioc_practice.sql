/*
Get skill, skilltype of Q1 job postings,
salary>70000
*/


--quarter1, >70000, jobid

WITH quarter1 AS(
SELECT
    jan.job_id,
    jan.salary_year_avg
FROM
    january_jobs AS jan

UNION ALL -- return EVERYTHING includes duplicates

SELECT
    feb.job_id,
    feb.salary_year_avg
FROM
    feburary_jobs AS feb

UNION ALL

SELECT
    mar.job_id,
    mar.salary_year_avg
FROM
    march_jobs AS mar
)

SELECT AVG(q1.salary_year_avg),
        skill_list.skills,
        skill_list.type
FROM quarter1 AS q1
LEFT JOIN skills_job_dim AS skillto_job
ON skillto_job.job_id= q1.job_id
LEFT JOIN skills_dim AS skill_list
ON skill_list.skill_id= skillto_job.skill_id

WHERE salary_year_avg>70000
GROUP BY skill_list.skills

ORDER BY salary_year_avg DESC