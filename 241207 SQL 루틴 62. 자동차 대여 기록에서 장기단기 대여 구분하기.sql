SELECT HISTORY_ID, CAR_ID,
       DATE_FORMAT(START_DATE, '%Y-%m-%d') START_DATE,
       DATE_FORMAT(END_DATE, '%Y-%m-%d') END_DATE,
       CASE 
           WHEN DATEDIFF(end_date, start_date) + 1 >= 30 then '장기 대여'
           ELSE '단기 대여' END as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE START_DATE like '2022-09%'
ORDER BY HISTORY_ID DESC