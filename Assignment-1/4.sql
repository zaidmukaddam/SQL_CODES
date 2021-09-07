SELECT first_name,
last_name,
school_name,
end_year
FROM users,
education
WHERE end_year > 2016 AND 
users.UserID = education.UserID;
