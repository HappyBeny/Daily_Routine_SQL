SELECT count(distinct name) count
from animal_ins
where not name is null