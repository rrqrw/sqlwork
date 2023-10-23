--조인 : 두 테이블을 서로 연결하여 사용하는 기법
-- 동등조인 : 조인 조건이 정확히 일치하는 경우에 결과 출력
-- 외부조인 : 조인 조건이 정확이 일치하지 않아도 모든 결과를 출력

--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색하시오 
--고객이름으로 정렬(자동으로 그룹화 됨)
-- 카테시안곱:customer(60)
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name;
--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색하시오 
--조건: '박지성' 고객의 주문내역을 검색하시오
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
and cus.name = '박지성'
order by cus.name;
--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색하시오 
--주문 금액의 총액을 출력(group by 결과)
-- 김연아 고객의 주문 총금액을 출력(having 으로 제한을 둠)
select cus.custid, cus.name, sum(ord.saleprice)
from customer cus, orders ord
where cus.custid = ord.custid
group by cus.name, cus.custid
 having cus.name = '김연아'
order by cus.name;



-- 주문하지 않은 데이터도 모두 검색
-- 조건이 일치하지 않은 테이블에 +를 넣어줌 
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid(+)
order by cus.name;
--고객의 이름 , 주문한 도서 이름 , 주문일 , 주문금액
select  cus.name , bk.bookname, ord.orderdate, ord.saleprice
from customer cus , book bk , orders ord
where cus.custid = ord.custid  -- 기본키 = 외래키
    and bk.bookid = ord.bookid;
       
    
  --표준 조인 (ansi sql)
  -- 내부조인 (inner join )
--고객(customer)과 고객의 주문(order)에 관한 데이터를 모두 검색하시오
-- 고객이 주문한 도서의 판매가격을 검색하시오 
select cus.name, ord.saleprice
from customer cus inner join orders ord  ---inner 은 생략가능
    on cus.custid = ord.custid
order by cus.name;

-- 외부 조인(outer join)
-- join 조건에 충족하는 데이터가 아니어도 출력하는기법
--고객(customer)과 고객의 주문(order)에 관한 데이터중
-- 주문되지 않은 데이터를 포함하여 고객의 이름과 고객이 주문한
-- 도서의 판매가격을 검색하시오 
SELECT cus.name, ord.saleprice
from customer cus left outer join orders ord 
    on cus.custid = ord.custid
order by cus.name;
    
    
    