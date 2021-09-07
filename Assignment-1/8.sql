SELECT userID
FROM positions
WHERE job_title = 'CEO'
UNION
SELECT userID
FROM users
WHERE no_connections > 500;
