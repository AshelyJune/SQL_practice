--SUBQUERIES:temporary table, dosent make table in database
SELECT*
FROM(--subquery starts here
    SELECT*
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) =1
)   AS january_jobs;

---CTE; common table expresstion
WITH january_jobs AS(
    SELECT*
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
)

SELECT*
FROM january_jobs;


-----------------------------------

--Jobs require no degree
SELECT company_dim.name
FROM company_dim

WHERE company_id IN(
SELECT
    company_id
FROM
    job_postings_fact
WHERE   job_no_degree_mention = true

)

