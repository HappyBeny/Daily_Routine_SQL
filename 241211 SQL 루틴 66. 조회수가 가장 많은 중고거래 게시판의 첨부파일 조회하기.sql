SELECT CONCAT('/home/grep/src/', f.BOARD_ID, '/', f.FILE_ID, f.FILE_NAME, f.FILE_EXT) as FILE_PATH
FROM USED_GOODS_BOARD b left join USED_GOODS_FILE f on b.BOARD_ID = f.BOARD_ID
WHERE b.VIEWS = (
    SELECT MAX(VIEWS)
    FROM USED_GOODS_BOARD b2 left join USED_GOODS_FILE f2 on b2.BOARD_ID = f2.BOARD_ID
    ORDER BY b2.BOARD_ID
    )