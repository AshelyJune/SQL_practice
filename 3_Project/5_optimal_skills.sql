--Optimal skills to learn
--high demand& high paying skill

WITH skills_demand AS(
    SELECT
        skill_list.skill_id,
        skill_list.skills,
        COUNT(skillsto_job.job_id) AS demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim AS skillsto_job ON skillsto_job.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim AS skill_list ON skill_list.skill_id = skillsto_job.skill_id
    WHERE job_title_short='Data Analyst'AND job_work_from_home = true AND
        salary_year_avg IS NOT NULL
    GROUP BY skill_list.skill_id
), avg_salary AS(
    SELECT
        skillsto_job.skill_id,
        ROUND(AVG(salary_year_avg),0) AS salary

    FROM job_postings_fact
    INNER JOIN skills_job_dim AS skillsto_job ON skillsto_job.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim AS skill_list ON skill_list.skill_id = skillsto_job.skill_id
    WHERE job_title_short = 'Data Analyst' AND job_work_from_home = true AND
        salary_year_avg IS NOT NULL
    GROUP BY skillsto_job.skill_id
)

SELECT
    skills_demand.skill_id,
    skills_demand.skills,
    skills_demand.demand_count,
    avg_salary.salary
FROM    
    skills_demand
INNER JOIN avg_salary ON skills_demand.skill_id= avg_salary.skill_id
WHERE demand_count>10
ORDER BY salary DESC, demand_count DESC
LIMIT 25;
-----------------------------------------------------------
--rewirting

SELECT
    skill_list.skill_id,
    skill_list.skills,
    COUNT(skillsto_job.job_id) AS demand_count,
    ROUND(AVG(salary_year_avg),0) AS salary
FROM job_postings_fact
INNER JOIN skills_job_dim AS skillsto_job ON skillsto_job.job_id = job_postings_fact.job_id
INNER JOIN skills_dim AS skill_list ON skill_list.skill_id = skillsto_job.skill_id
WHERE job_title_short='Data Analyst'
        AND job_work_from_home = true 
        AND salary_year_avg IS NOT NULL
GROUP BY skill_list.skill_id
HAVING COUNT(skillsto_job.job_id)>10
ORDER BY salary DESC, demand_count DESC
LIMIT 25;