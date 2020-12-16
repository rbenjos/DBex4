EXPLAIN
select distinct *
from Movies M1
where duration = 
(
select min(duration)
from Movies M2
where M2.year = M1.year
);
