-- 코드를 입력하세요
SELECT r.REST_ID, i.REST_NAME, i.FOOD_TYPE, i.FAVORITES, i.ADDRESS, round(avg(r.REVIEW_SCORE),2)
FROM REST_REVIEW r left join REST_INFO i on r.REST_ID = i.REST_ID
where i.ADDRESS like '서울%'
group by 2
order by 6 DESC, 4 DESC