SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(s.SALES * b.PRICE) TOTAL_SALES
FROM BOOK_SALES s 
     left join BOOK b on s.BOOK_ID = b.BOOK_ID 
     left join AUTHOR a on b.AUTHOR_ID = a.AUTHOR_ID
WHERE DATE_FORMAT(s.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY 2,3
ORDER BY 1, 3 DESC