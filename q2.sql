EXPLAIN ANALYZE
SELECT DISTINCT * FROM Movies M2 NATURAL JOIN
(
select distinct min(duration) as duration, year
from Movies M1
GROUP BY M1.year
) M3
