ALTER TABLE job_applied
ADD contact VARCHAR(50);
-------------
UPDATE job_applied
SET contact = 'JAKE'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Mutto'
WHERE job_id = 1;
----------------
ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;
----------------

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;
-----------------

ALTER TABLE job_applied
DROP contact_name;

-----------
DROP TABLE job_applied;

SELECT *
FROM job_applied;