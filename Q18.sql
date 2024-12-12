# SHAIK MOHAMMED IKRAM
SELECT 
    t1.show_id AS show_id_1,
    t1.title AS title_1,
    t1.rating AS rating_1,
    t2.show_id AS show_id_2,
    t2.title AS title_2,
    t2.rating AS rating_2
FROM netflix t1
JOIN netflix t2 
    ON t1.country = t2.country
    AND t1.show_id != t2.show_id
    AND t1.rating > t2.rating
WHERE t1.rating <> 'Unknown' AND t2.rating <> 'Unknown'
ORDER BY t1.country, t1.rating DESC, t2.rating DESC;
