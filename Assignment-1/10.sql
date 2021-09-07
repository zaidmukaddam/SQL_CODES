CREATE VIEW profiles AS
    SELECT last_name,
           first_name,
           (
               SELECT industry_name
                 FROM industry
                WHERE users.INDUSTRY_ID = industry.IID
           )
           AS industry_name,
           job_title,
           organization
      FROM users,
           positions,
           contact
     WHERE users.UserID = positions.UserID AND 
           users.UserID = contact.UserID;
