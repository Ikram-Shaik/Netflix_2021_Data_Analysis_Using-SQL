# SHAIK MOHAMMED IKRAM
CREATE VIEW RecentTitle AS
SELECT title
FROM netflix
WHERE date_added >=
(SELECT DATE_SUB(MAX(date_added), INTERVAL 30 DAY) FROM netflix);

Select * from RecentTitle;
