SELECT ANIMAL_ID, NAME, IF(SEX_UPON_INTAKE like '%Neutered%', 'O', IF(SEX_UPON_INTAKE like '%Spayed%', 'O', 'X')) as "중성화"
FROM ANIMAL_INS
ORDER BY ANIMAL_ID