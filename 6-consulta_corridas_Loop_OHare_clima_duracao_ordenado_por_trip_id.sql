WITH weather_categories AS (
    SELECT ts,
           CASE 
               WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
               ELSE 'Good'
           END AS weather_conditions
    FROM weather_records
)
SELECT trips.start_ts,
       weather_categories.weather_conditions,
       trips.duration_seconds
FROM trips
INNER JOIN weather_categories ON weather_categories.ts = trips.start_ts
INNER JOIN neighborhoods ON neighborhoods.neighborhood_id = trips.pickup_location_id
WHERE trips.pickup_location_id = 50 AND trips.dropoff_location_id = 63
  AND EXTRACT(ISODOW FROM trips.start_ts) = 6
ORDER BY trips.trip_id;
