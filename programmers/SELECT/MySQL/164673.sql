/*
# 조건에 부합하는 중고거래 댓글 조회하기

# 164673 MySQL

# 문제
USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요. 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.

# 테이블 2개를 묶어야 했고 겹치는 컬럼이 있어 INNER JOIN으로 작업

# 조인을 묶는 조건은 BOARD_ID로 작업함(동일 규칙, 겹칠수가 없는 구조로 판단)

# 조건은 댓글 작성일 기준으로 BETWEEN ~ AND 작업 필요
where 데이터 between '기간' and '기간' 작성 방식 주의

# 오름차순은 2가지 조건이 있기에 쉼표로 구분해서 ASC 오름차순 진행. 선진행 후 막힐 때 후 진행이 될 수 있도록 게시글 제목이 뒤로 감.

# DATE에서 시간이 출력되어 코드 오류가 발생하게 되었음.
일자까지 나올 수 있도록 형태 변환.
%y-%-%d => yy-mm-dd
%Y-%m-%d => yyyy-mm-dd

*/


SELECT B.TITLE, B.BOARD_ID, R.REPLY_ID, R.WRITER_ID, R.CONTENTS, DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
FROM USED_GOODS_REPLY AS R
INNER JOIN USED_GOODS_BOARD AS B
    ON B.BOARD_ID = R.BOARD_ID
WHERE B.CREATED_DATE BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;

-- MySQL의 DATE_FORMAT로 날짜을 형식문자열로 변경 가능함. strftime()스타일
    Oracle은 형식문자열이 아닌 전용 포맷 YYYY-MM-DD 형태.
