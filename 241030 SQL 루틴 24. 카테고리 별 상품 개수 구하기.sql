
SELECT SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY, Count(1)
FROM PRODUCT 
GROUP BY CATEGORY