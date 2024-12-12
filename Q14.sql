# SHAIK MOHAMMED IKRAM
SELECT DENSE_RANK() OVER(PARTITION BY COUNTRY ORDER BY release_year) AS Ranking_By_Country,
title,country,release_year
FROM netflix
WHERE country <> 'Unknown';