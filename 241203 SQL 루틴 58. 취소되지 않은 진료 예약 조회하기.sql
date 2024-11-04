SELECT s.APNT_NO,
       p.PT_NAME,
       s.PT_NO,
       s.MCDP_CD,
       s.DR_NAME,
       s.APNT_YMD
FROM (
SELECT a.APNT_NO as APNT_NO,
       a.PT_NO as PT_NO,
       a.MCDP_CD as MCDP_CD,
       d.DR_NAME as DR_NAME,
       a.APNT_YMD as APNT_YMD,
       a.APNT_CNCL_YMD
FROM APPOINTMENT a LEFT JOIN DOCTOR d on a.MDDR_ID = d.DR_ID
WHERE DATE(APNT_YMD) = '2022-04-13' and APNT_CNCL_YN = 'N' and a.MCDP_CD = 'CS'
) s left JOIN PATIENT p on s.PT_NO = p.PT_NO
ORDER BY 6