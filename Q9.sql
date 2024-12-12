# SHAIK MOHAMMED IKRAM
SELECT country,COUNT(title) as No_Of_Titles
FROM netflix
WHERE country <> 'Unknown'
GROUP BY country
ORDER BY COUNT(title) DESC;