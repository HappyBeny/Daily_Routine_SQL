SELECT a.CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY a LEFT JOIN CAR_RENTAL_COMPANY_CAR b on a.CAR_ID = b.CAR_ID
WHERE MONTH(a.START_DATE) = 10 and b.CAR_TYPE = '세단'
GROUP BY a.CAR_ID
ORDER BY a.CAR_ID DESC