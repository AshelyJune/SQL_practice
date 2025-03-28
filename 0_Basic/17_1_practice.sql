SELECT
    AVG(jp.salary_year_avg) AS average_salary,
    COUNT(skillstojob.job_id ) AS job_count,
    
   -- skillstojob.skill_id,
    skillslist.skills AS skill_name
FROM skills_dim AS skillslist

LEFT JOIN skills_job_dim AS skillstojob
    ON skillslist.skill_id = skillstojob.skill_id
LEFT JOIN job_postings_fact AS jp
    ON skillstojob.job_id = jp.job_id
GROUP BY skillslist.skills
ORDER BY average_salary DESC