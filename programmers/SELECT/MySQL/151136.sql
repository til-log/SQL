# 평균 일일 대여 요금 구하기

# 151136

# 어느 자동차 대여 회사에서 대여중인 자동차들의 정보를 담은 CAR_RENTAL_COMPANY_CAR 테이블
# CAR_RENTAL_COMPANY_CAR 테이블은 아래와 같은 구조, CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS 는 각각 자동차 ID, 자동차 종류, 일일 대여 요금(원), 자동차 옵션 리스트
# 자동차 종류는 '세단', 'SUV', '승합차', '트럭', '리무진' 
# 자동차 옵션 리스트는 콤마(',')로 구분된 키워드 리스트(예: '열선시트', '스마트키', '주차감지센서')
# 키워드 종류는 '주차감지센서', '스마트키', '네비게이션', '통풍시트', '열선시트', '후방카메라', '가죽시트'

# 문제
# CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요. 이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.

SELECT ROUND(SUM(DAILY_FEE)/COUNT(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';

# 소수 첫 번째 자리에서 반올림 하기 때문에 소수가 나오면 안되기 때문에 ROUND에서 0으로 진행

# 작업 진행 중 에러 발생. 점검 진행할 때 FROM 줄에서 ;로 작성하여 WHERE에서 신텍스 에러 발생. 주의하면서 작업하게 될 듯 함

# COUNT 부분에서 LEN과 헷갈렸음. 파이썬 언어에서 요소 개수 확인하는 함수인데 MYSQL에서 비슷하게 LENGTH으로 문자수나 바이트 수를 확인할 수 있어서 초반에 있지 않을까 고민했었음

# MySQL의 집계 함수!==========================
# SUM(COLUMN)         | 합계
# AVG(COLUMN)         | 평균
# MIN(COLUMN)         | 최솟값
# MAX(COLUMN)         | 최댓값
# COUNT(COLUMN)       | 레코드 수 계산
# ABS(NUMBER)         | 숫자 절대값 반환
# CAST(VALUE AS TYPE) | 데이터 형식 변환
