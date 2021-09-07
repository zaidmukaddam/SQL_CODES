SELECT *
FROM users
WHERE (
SELECT AVG(no_connections) 
FROM users
)
ORDER BY industry_id ASC;
