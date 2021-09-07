-- 1

SELECT first_name,
last_name,
education.startyear,
education.END_YEAR
FROM users,
education
WHERE (education.END_YEAR - education.startyear) <= 2 AND 
users.userID = education.userID;


-- 2 
SELECT education.UserID,
       users.first_name,
       users.last_name,
       COUNT(first_name) AS [Education Records]
  FROM users,
       education
 WHERE users.userID = education.userID
 GROUP BY first_name,
          last_name
HAVING COUNT(first_name) > 1 AND 
       COUNT(last_name) > 1 AND 
       COUNT(first_name) = COUNT(last_name);
