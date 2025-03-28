-- high paying skills
-- avg salary on each skill for DA


SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS salary

FROM job_postings_fact


INNER JOIN skills_job_dim AS skillsto_job ON skillsto_job.job_id = job_postings_fact.job_id
INNER JOIN skills_dim AS skill_list ON skill_list.skill_id = skillsto_job.skill_id
WHERE job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY salary DESC

LIMIT 25;