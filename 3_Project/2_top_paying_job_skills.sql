-- top10 paying job+ required skills

SELECT
    top10.*,
    skill_list.skills
FROM (
    SELECT salary_year_avg,
        job_title,
        job_id,
        company_dim.name
    FROM job_postings_fact

    LEFT JOIN company_dim 
    ON job_postings_fact.company_id= company_dim.company_id


    WHERE job_title_short='Data Analyst' AND
            salary_year_avg>0 AND
            job_work_from_home = TRUE
    ORDER BY salary_year_avg DESC
    LIMIT 10)
AS top10
INNER JOIN skills_job_dim AS skillsto_job
ON skillsto_job.job_id = top10.job_id
INNER JOIN skills_dim AS skill_list
ON skill_list.skill_id = skillsto_job.skill_id
ORDER BY salary_year_avg DESC