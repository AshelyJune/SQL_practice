INSERT INTO job_applied(
    job_id,
    application_date,
    custom_resume,
    resume_file_name,
    CV_sent,
    CV_name,
    status
)

VALUES(
    1,
    '2023-02-01',
    true,
    'CV01.pdf',
    true,
    'CV_01.pdf',
    'submitted'
),
(
    2,
    '2023-03-01',
    true,
    'CV02.pdf',
    true,
    'CV_02.pdf',
    'submitted'
);

SELECT*
FROM job_applied  
