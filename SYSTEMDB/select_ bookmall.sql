
select * from orders;

-- 주문 테이블의 칼럼, 자료형 구조
desc orders;




-- 통계 함수 - 개수(count), 합계(sum) , 평균(avg) , 최대값(max) , 최소값(min)
-- count(*) : '*' - 칼럼명
-- count(칼럼명) :
SELECT count(*) as 총판매건수 
from orders;

select count(*) as 총고객수 , count(phone) as 전화번호수 from customer;

SELECT sum(saleprice) as 총판매액,
        avg(saleprice) as 총평균액
from orders;
-- 고객이 주문한 도서의 총판매액 계산
select sum(saleprice) as 총판매액
from orders;
-- 고객별로 주문한 도서의  총판액을 계산
--그룹으로 묶을때 사용 - group by  칼럼명
select custid,
        count(*) as 도서수량,
        sum(saleprice) as 총판매액
from orders
GROUP by custid;
--고객별로 주문한 도서의 총판매액과 도서수량을 계산
-- 도서수량이 3권 이상인 자료검색
--having 절 사용 - group by절에서 조건이 있을때 사용 
select custid,
        count(*) as 도서수량,
        sum(saleprice) as 총판매액
from orders
GROUP by custid
having count(*) >=3;
   --and sum(saleprice) >35000;

-- 도서중에서 최대가격, 최저가격 알기 
select max(price) 최고가격 , min(price) 최저가격
from book;

 
select * from customer;
-- '3번 고객(안산)' 이 주문한 도서의 총 판매액 구하기  
select  sum(saleprice) as 총판매액
from orders
where custid = 3;

-- 조인(Join)
-- 동등조인(equi join) : equql(=) 을 사용하는 조인
-- 테이블A.칼럼명 = 테이블B.칼럼명 (칼럼- 외래키)
-- 고객의 이름과 고객이 주문한 주문가겨을 검색하시오 (customer, orders 조인)
select customer.name , orders.saleprice
from customer, orders
where customer.custid = orders.custid;

--별칭 사용 조인
-- 고객 이름별 정렬 ( 오름차순 )
select cus.name , ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

--3번 고객의 아이디와  도서이름과 주문가격을 검색
select  custid, bookname,saleprice
from orders, book
where orders.bookid = book.bookid;


select  custid,custid,book.bookname,orders,saleprice
from orders, customer,book
where orders.custid =customer.custid
    and orders.bookid = book.bookid
    and customer.name = '안산';




