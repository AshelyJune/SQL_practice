CREATE TABLE job_applied(
    job_id INT,
    application_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    CV_sent BOOLEAN,
    CV_name VARCHAR(255),
    status VARCHAR(50)

);


SELECT *
FROM job_applied;