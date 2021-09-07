SELECT first_name,
last_name,
education.startyear,
education.END_YEAR
FROM users,
education
WHERE (education.END_YEAR - education.startyear) <= 2 AND 
users.userID = education.userID;
