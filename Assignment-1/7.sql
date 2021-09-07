SELECT *
FROM users,
positions
WHERE job_title IN ('COO', 'CEO', 'CFO') AND 
users.UserID = positions.UserID;
