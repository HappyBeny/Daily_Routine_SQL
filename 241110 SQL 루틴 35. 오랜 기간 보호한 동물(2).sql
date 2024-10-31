SELECT b.ANIMAL_ID, a.NAME
FROM ANIMAL_OUTS a INNER JOIN ANIMAL_INS b on a.ANIMAL_ID = b.ANIMAL_ID
ORDER BY a.DATETIME - b.DATETIME DESC
LIMIT 2