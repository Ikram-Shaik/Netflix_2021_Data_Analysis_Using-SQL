# SHAIK MOHAMMED IKRAM
UPDATE netflix
SET new_rating = FLOOR(1 + (RAND() * 5));

SELECT 
    country, 
    avg_rating
FROM (
    SELECT country, AVG(new_rating) AS avg_rating
    FROM netflix
    WHERE country <> 'Unknown'
    GROUP BY country
) AS country_avg
ORDER BY avg_rating DESC
LIMIT 1;
