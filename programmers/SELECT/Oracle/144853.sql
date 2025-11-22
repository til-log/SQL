-- 144853

-- 조건에 맞는 도서 리스트 출력하기

-- 문제
-- BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아
-- 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성
-- 결과는 출판일을 기준으로 오름차순 정렬

SELECT BOOK_ID, TO_CHAR(PUBLISHED_DATE, 'YYYY-mm-dd') AS PUBLISHED_DATE
FROM BOOK
WHERE TO_CHAR(PUBLISHED_DATE,'YYYY') = '2021' AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE ASC;

-- TIP!
-- TO_DATE는 STRING->DATE 형태 변환을 위해
-- TO_CHAR는 DATE->STRING 형태 변환을 위해
