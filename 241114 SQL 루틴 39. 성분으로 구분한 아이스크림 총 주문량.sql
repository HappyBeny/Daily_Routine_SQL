SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) TOTAL_ORDER
FROM ICECREAM_INFO a INNER JOIN FIRST_HALF b on a.FLAVOR = b.FLAVOR
GROUP BY a.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER