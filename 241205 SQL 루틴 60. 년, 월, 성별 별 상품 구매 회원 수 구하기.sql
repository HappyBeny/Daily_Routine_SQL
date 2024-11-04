SELECT YEAR(o.SALES_DATE) YEAR,
       MONTH(o.SALES_DATE) MONTH,
       u.GENDER GENDER,
       COUNT(DISTINCT u.USER_ID) USERS
FROM ONLINE_SALE o LEFT JOIN USER_INFO u on o.USER_ID = u.USER_ID
WHERE NOT GENDER IS NULL
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3