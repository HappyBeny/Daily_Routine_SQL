SELECT name, count(1) count
from animal_ins
where not name is null
group by name
having count >= '2'
order by name
