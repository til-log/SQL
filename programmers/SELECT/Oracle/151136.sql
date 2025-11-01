/*
# 평균 일일 대여 요금 구하기

# 151136

# 어느 자동차 대여 회사에서 대여중인 자동차들의 정보를 담은 CAR_RENTAL_COMPANY_CAR 테이블
# CAR_RENTAL_COMPANY_CAR 테이블은 아래와 같은 구조, CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS 는 각각 자동차 ID, 자동차 종류, 일일 대여 요금(원), 자동차 옵션 리스트
# 자동차 종류는 '세단', 'SUV', '승합차', '트럭', '리무진' 
# 자동차 옵션 리스트는 콤마(',')로 구분된 키워드 리스트(예: '열선시트', '스마트키', '주차감지센서')
# 키워드 종류는 '주차감지센서', '스마트키', '네비게이션', '통풍시트', '열선시트', '후방카메라', '가죽시트'

# 문제
# CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요. 이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.

*/


/*
-- Oracle의 따옴표!
-- 홑 따옴표 '는 문자열 값을 나타낼 때 사용된다
-- 쌍 따옴표 "는 식별자에 사용될 때 주로 활용된다. 대소문자를 구분하기에 주의 필요
*/

SELECT ROUND(SUM(DAILY_FEE)/COUNT(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';
