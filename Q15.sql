# SHAIK MOHAMMED IKRAM
SELECT 
    DATE_FORMAT(date_added, '%Y-%m') AS month_added, 
    COUNT(*) AS titles_added_in_month,
    SUM(COUNT(*)) OVER (ORDER BY DATE_FORMAT(date_added, '%Y-%m') 
	ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_titles
FROM netflix
WHERE date_added IS NOT NULL
GROUP BY DATE_FORMAT(date_added, '%Y-%m');

