# SHAIK MOHAMMED IKRAM
SELECT title,duration,duration_in_min
FROM
(SELECT title,duration,
CASE
	WHEN duration LIKE "%Season%" THEN CAST(SUBSTRING_INDEX(duration,' ',1) AS UNSIGNED)*400
    ELSE CAST(SUBSTRING_INDEX(duration,' ',1) AS UNSIGNED)
END AS duration_in_min
FROM netflix) AS derived
ORDER BY duration_in_min DESC
LIMIT 1;
