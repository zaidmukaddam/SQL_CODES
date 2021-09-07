--QUERY: -
CREATE INDEX summary ON users (
Summary ASC
);
--Query to test index: -
SELECT *
FROM users
WHERE summary = 'Qualified';
