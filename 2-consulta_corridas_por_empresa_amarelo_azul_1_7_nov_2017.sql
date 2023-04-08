SELECT
    company_name,
    COUNT(trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE
    start_ts::date BETWEEN '2017-11-1' AND '2017-11-7' AND 
    (company_name LIKE '%Blue%' OR company_name LIKE '%Yellow%')
GROUP BY
    company_name