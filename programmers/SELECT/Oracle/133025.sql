-- 과일로 만든 아이스크림 고르기

-- 133025

-- 아이스크림 가게의 상반기 주문 정보를 담은 FIRST_HALF 테이블
    -- SHIPMENT_ID, FLAVOR, TOTAL_ORDER 는 각각 아이스크림 공장에서 아이스크림 가게까지의 출하 번호, 아이스크림 맛, 상반기 아이스크림 총주문량
    -- 기본 키 FLAVOR
-- 성분에 대한 정보를 담은 ICECREAM_INFO 테이블
    -- FLAVOR, INGREDITENT_TYPE 은 각각 아이스크림 맛, 아이스크림의 성분 타입
    -- 기본 키는 FLAVOR[FIRST_HALF 테이블의 FLAVOR의 외래 키]
        -- INGREDIENT_TYPE 주 성분이 설탕 = sugar_based
        -- INGREDIENT_TYPE 주 성분이 과일 = fruit_based
        

-- 문제
-- 상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL 문을 작성해주세요.

SELECT F.FLAVOR
FROM FIRST_HALF F JOIN ICECREAM_INFO I ON F.FLAVOR = I.FLAVOR
WHERE F.TOTAL_ORDER >= 3000 AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;

/*
Oracle JOIN의 경우
기존 테이블 JOIN 합치려는 테이블 ON 기존테이블.공통키 = 합치려는테이블.공통키
*/
