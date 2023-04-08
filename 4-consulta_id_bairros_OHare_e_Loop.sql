SELECT
    neighborhood_id,
    name
FROM
    neighborhoods
WHERE
    name LIKE '%O''Hare%' OR name LIKE 'Loop';
