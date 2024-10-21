SELECT ANIMAL_TYPE, IFNULL(name, 'No name') AS name, SEX_UPON_INTAKE
FROM ANIMAL_INS 
order by animal_id