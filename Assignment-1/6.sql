SELECT users.first_name,
       users.last_name,
       users.no_connections,
       users.R_ID
  FROM users,
       regions
 WHERE no_connections <= (
                             SELECT MIN(no_connections) 
                               FROM users
                              WHERE users.r_id = regions.RegionID
                         )
AND 
       users.r_id = regions.RegionID
 ORDER BY regions.RegionID ASC;
