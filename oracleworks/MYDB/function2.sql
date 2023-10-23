-- 날짜 시간 함수
-- 현재 날짜 출력
select sysdate from dual;

-- 현재 날짜 형식변환
select to_char(sysdate,'yyyy')년도,
       to_char(sysdate,'mm') 월,
       to_char(sysdate,'dd')일,
       to_char(sysdate,'yyyy-mm-dd')날짜
from dual;

-- 현재 날짜와 시간
select systimestamp from dual;

-- 시간 형식 변환
select to_char(sysdate,'hh:mi:ss')시간형식 ,
       to_char(sysdate,'yyyy-mm-dd hh:mi:ss')날짜와시간
from dual;


-- 일을 더하고빼기
-- 현재날짜에서 10일전, 후의 날짜 출력
select sysdate -10 from dual;
select sysdate +10 from dual;

-- 특정 날짜에서 10일전, 후의 날짜 출력
-- to date(문자열[날짜])
select to_date('2023-09-01') +10 from dual;

-- 월을 더하고빼기
-- add_months()
select add_months(sysdate,3) 결과 from dual;
select add_months(sysdate,-3) 결과 from dual;
select add_months(to_date('2023/5/1'),3) 결과 from dual;


--개월수 계산하기 
-- months_between(종료일, 시작일)
-- 총개월수 반올림 -round() 사용 
select 
round (months_between(to_date('2023-12-31'),to_date('2023-1-1')),0) 총개월수
from dual;

-- orders 테이블에서 날짜 시간함수 사용 하기 
-- 서점은 주문일로부터 10일후 매출을 확정한다.
-- 각 주문의 확정일자를 구하시오 
select orderid 주문번호,
        orderdate 주문일,
       to_date(orderdate)+10 확정일
from orders;
--주문일에 3개월 더하고 , 빼기
--주문번호가 6번에서 10까지 출력하시오
select orderid 주문번호,
        orderdate 주문일,
        add_months(orderdate,3) 더하기결과,
         add_months(orderdate,-3) 빼기결과
from orders
--where orderid >=6 and orderid<=10;
where orderid between 6 and 10;

-- 주문버호가 10인 도서의 주문일로부터 오늘까지의 총 개월수를 구하시오 
select orderid 주문번호,
        orderdate 주문일,
 trunc(months_between(sysdate,orderdate),0)총개월수
from orders 
where orderid=10;

-- 변환 함수 : to_number() : 문자를 숫자로 변환해줌 
select to_number('320') from dual;