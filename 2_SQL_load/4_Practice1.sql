-- top 5 skills that mentioned in job posting
-- subquery to find skill ids in skillsjob dim, join skills dim to get skill names.


WITH skillmentioned AS(

    SELECT 
        skillnjob.skill_id,
        COUNT(skillnjob.skill_id) AS skill_count

    FROM skills_job_dim AS skillnjob
    GROUP BY skill_id
)

SELECT
    skills_dim.skills AS skillname,
    skill_count
FROM skills_dim

LEFT JOIN skillmentioned on skills_dim.skill_id = skillmentioned.skill_id
ORDER BY skill_count DESC