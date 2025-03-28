--company by number of job posting// determine size S m l
-- s: <10,  m: 9<m<50,  L:49<
-- subquery on job counts

WITH posting_count AS(

SELECT company_id,
    COUNT(company_id) AS job_counts
FROM job_postings_fact
GROUP BY company_id
ORDER BY job_counts DESC
)

SELECT posting_count.job_counts,
       posting_count.company_id,
CASE 
    WHEN job_counts<10 THEN 'Small'
    WHEN job_counts BETWEEN 10 AND 50 THEN 'Medium'
    WHEN job_counts >50 THEN 'Large'
    END AS size_category
FROM posting_count