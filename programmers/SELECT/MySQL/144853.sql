# 조건에 맞는 도서 리스트 출력하기

# 144853

# 문제
# BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성해주세요.
# 결과는 출판일을 기준으로 오름차순 정렬해주세요.

SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE (YEAR(PUBLISHED_DATE)=2021) AND (CATEGORY = '인문')
# WHERE (PUBLISHED_DATE BETWEEN '2021-01-01' AND '2021-12-31') AND (CATEGORY = '인문')
ORDER BY PUBLISHED_DATE ASC;

/*
MySQL은 특정 연도, 월, 일별 조회에서 YEAR, MONTH, DAY와 같은 함수를 활용할 수 있음.

또한 BETWEEN으로도 날짜 조회 가능.
PUBLISHED_DATE BETWEEN '2021-01-01' AND '2021-12-31' -> 해당 방식으로 작성한 결과가 12번줄.
동일한 결과 나옴
*/
