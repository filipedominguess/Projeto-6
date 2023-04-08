SELECT
    cabs.company_name,
    COUNT(subq.trip_id) AS trips_amount 
FROM 
    cabs
    INNER JOIN (
        SELECT 
            trip_id,
            DATE_TRUNC('day',start_ts::date),
            cab_id
        FROM
            trips
        WHERE
            start_ts::date BETWEEN '2017-11-15' AND '2017-11-16') AS subq ON subq.cab_id = cabs.cab_id
GROUP BY
    cabs.company_name
ORDER BY 
    trips_amount DESC;