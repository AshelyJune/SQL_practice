# Introduction
Learning Data Analyst Project!

I made a project 
1. top paying jobs
2. top paying jobs skills
3. top demanded skills
4. top paying skills
5. optimal skills to learn

SQL queries : Check them out here -->[project folder](/project/)

# Background




# Tools I used


- **SQL**


# The Anlaysis

### 1. Top paying job


--top paying job q0 remote

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
```



# What I learned

# Conclusion
## Insight

### Closing Thoughts