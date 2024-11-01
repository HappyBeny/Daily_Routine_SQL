SELECT CASE
       WHEN PRICE between 0 and 9999 then '0'
       WHEN PRICE between 10000 and 19999 then '10000'
       WHEN PRICE between 20000 and 29999 then '20000'
       WHEN PRICE between 30000 and 39999 then '30000'
       WHEN PRICE between 40000 and 49999 then '40000'
       WHEN PRICE between 50000 and 59999 then '50000'
       WHEN PRICE between 60000 and 69999 then '60000'
       WHEN PRICE between 70000 and 79999 then '70000'
       WHEN PRICE between 80000 and 89999 then '80000'END AS PRICE_GROUP,
       COUNT(1) as PRODUCTS
FROM PRODUCT 
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP