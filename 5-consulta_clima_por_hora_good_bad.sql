SELECT
    CASE 
        WHEN description LIKE  '%rain%' OR 
            description LIKE '%storm%' 
            THEN 'Bad' 
        ELSE 
            'Good' END AS weather_conditions,
    ts
FROM
    weather_records