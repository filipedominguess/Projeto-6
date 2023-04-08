SELECT
    CASE 
        WHEN cabs.company_name != 'Flash Cab' 
        AND cabs.company_name != 'Taxi Affiliation Services' 
        THEN 'Other'
    ELSE
        cabs.company_name
    END AS company,
    COUNT(trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE
    trips.start_ts::date BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY
    company
ORDER BY
    trips_amount DESC;
    
    