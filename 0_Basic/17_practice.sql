SELECT
    
    AVG(jp.salary_year_avg) AS average_salary,
    COUNT(jp.job_id ) AS job_count,
    
   -- skillstojob.skill_id,
    skillslist.skills AS skill_name
FROM job_postings_fact AS jp
LEFT JOIN skills_job_dim AS skillstojob
    ON jp.job_id = skillstojob.job_id
LEFT JOIN skills_dim AS skillslist
    ON skillstojob.skill_id = skillslist.skill_id
GROUP BY skillslist.skills
ORDER BY average_salary DESC