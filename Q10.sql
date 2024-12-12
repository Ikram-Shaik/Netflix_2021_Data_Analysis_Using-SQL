# SHAIK MOHAMMED IKRAM
SELECT title,
CASE
	WHEN rating IN ('G', 'PG', 'PG-13') THEN 'Family'
    WHEN rating IN ('TV-Y', 'TV-Y7', 'TV-G') THEN 'Kids'
    ELSE 'Adult'
END AS Film_Type
FROM netflix;