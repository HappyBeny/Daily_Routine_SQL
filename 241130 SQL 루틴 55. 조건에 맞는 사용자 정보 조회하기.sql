SELECT b.USER_ID, 
       b.NICKNAME,
       CONCAT(b.CITY, ' ', b.STREET_ADDRESS1, ' ', b.STREET_ADDRESS2) as "전체주소",
       CONCAT(SubStr(b.TLNO, 1, 3), '-',
              SubStr(b.TLNO, 4, 4), '-',
              SubStr(b.TLNO, 8, 4)) "전화번호"
FROM USED_GOODS_BOARD a INNER JOIN USED_GOODS_USER b on a.WRITER_ID = b.USER_ID
GROUP BY a.WRITER_ID
HAVING COUNT(1) >= 3
ORDER BY b.USER_ID DESC