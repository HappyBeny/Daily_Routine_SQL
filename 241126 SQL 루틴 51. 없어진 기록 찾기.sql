SELECT a.ANIMAL_ID, a.NAME
FROM ANIMAL_OUTS a LEFT JOIN ANIMAL_INS b on a.ANIMAL_ID = b.ANIMAL_ID
WHERE b.DATETIME is NULL
ORDER BY ANIMAL_ID