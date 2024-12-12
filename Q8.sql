# SHAIK MOHAMMED IKRAM
CREATE TEMPORARY TABLE Dir_count AS
(SELECT director,count(director) as Count_of
FROM netflix
WHERE director <> 'Unknown'
GROUP BY director);

select n.show_id,n.title,n.director,d.Count_of as number_of_titles_by_director
FROM netflix n
INNER JOIN Dir_Count d
ON n.director=d.director
ORDER BY n.director;