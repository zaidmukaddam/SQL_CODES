SELECT first_name,
last_name,
no_connections
FROM users
WHERE r_id = 'R1' AND 
no_connections > (
SELECT 2 * AVG(no_connections) 
FROM users
WHERE r_id = 'R1'
);
