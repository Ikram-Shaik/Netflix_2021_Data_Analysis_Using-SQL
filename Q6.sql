# SHAIK MOHAMMED IKRAM
SELECT 
    ROUND(AVG(
        CASE 
            WHEN duration LIKE '%Season%' THEN CAST(SUBSTRING_INDEX(duration, ' ', 2) AS UNSIGNED) * 400
            ELSE CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)
        END
    ),0) AS average_duration_minutes
FROM netflix;
