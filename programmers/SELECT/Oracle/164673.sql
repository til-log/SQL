-- 조건에 부합하는 중고거래 댓글 조회하기

-- 164673 Oracle

-- 문제
-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용,
-- 댓글 작성일을 조회하는 SQL문을 작성해주세요. 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.

SELECT B.TITLE, B.BOARD_ID, R.REPLY_ID, R.WRITER_ID, R.CONTENTS, TO_CHAR(R.CREATED_DATE, 'YYYY-MM-DD') CREATED_DATE
FROM USED_GOODS_BOARD B JOIN USED_GOODS_REPLY R
    ON B.BOARD_ID = R.BOARD_ID
WHERE B.CREATED_DATE BETWEEN TO_DATE('2022-10-01', 'YYYY-MM-DD')
                        AND TO_DATE('2022-10-31', 'YYYY-MM-DD')
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;

/*
- 오라클은 FROM에서 AS를 사용하면 안됨
  재미있는 점은 SELECT에서는 가능함
- 오라클은 날짜DATE형을 비교/계산용으로 쓸 때 TO_DATE()의 변환이 필요
- 오라클은 날짜DATE형을 출력용으로 쓸 때 출력 형식을 바꾸려면 TO_CHAR()의 변환이 필요
*/
