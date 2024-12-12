# SHAIK MOHAMMED IKRAM
ALTER TABLE netflix
ADD COLUMN title_length INT;

UPDATE netflix
SET title_length = 
CASE 
	WHEN title='Unknown' THEN NULL
    ELSE LENGTH(title)
END;

SELECT title,title_length 
FROM netflix;

