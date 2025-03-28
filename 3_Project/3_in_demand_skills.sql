/*
DA most demanded skills,

same as 5_2_Practice7, but better stracture
*/

SELECT
    skills,
    COUNT(skillsto_job.job_id) AS demand_count


FROM job_postings_fact


INNER JOIN skills_job_dim AS skillsto_job ON skillsto_job.job_id = job_postings_fact.job_id
INNER JOIN skills_dim AS skill_list ON skill_list.skill_id = skillsto_job.skill_id
WHERE job_title_short='Data Analyst'
GROUP BY skills
ORDER BY demand_count DESC

LIMIT 5