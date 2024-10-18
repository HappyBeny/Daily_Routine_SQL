SELECT ANIMAL_ID,
       NAME
from animal_ins
where ANIMAL_TYPE = 'Dog' and NAME like '%el%'
order by name
