# SHAIK MOHAMMED IKRAM
SELECT * FROM
(SELECT DENSE_RANK() OVER(ORDER BY date_added DESC) AS Rank_Num,
title,date_added 
FROM netflix) AS Derived
WHERE Rank_Num<=5;