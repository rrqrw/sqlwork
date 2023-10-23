-- 서브 쿼리 (sub query)


--도서중 가격이 가장 높은 도서를 검색하시오
-- max(prprice):35000
select max(price)from book;

-- 도서중에서 가장 비싼 도서의 이름을 검색하시오
select bookname,price
from book
where price = (select max(price)from book);

--도서를 구매한 적이 잇는 고객의 이름을 검색하시오
select custid from orders;

select name
from customer 
where custid =1;

--다중형 서브 쿼리 
select name
from customer 
where custid in(select custid from orders);

--조인방식 : customer, orders
--도서를 구매한 적이 있는 고객의 이름을 검색하시오

select distinct  cus.name
from customer cus , orders ord
where cus.custid = ord.custid;

-- from 절에 있는 서브 쿼리 - 인라인뷰라고도 함
--고객번호가 2 이하인 고객의 이름과 고객의 판매액 검색
-- 그룹별 - group by
-- 단 , 고객 번호가 2이하임 

-- 동등 조인 
select cs.name ,sum(od.saleprice)
from customer cs, orders od
where cs.custid = od.custid
    and cs.custid<=2
group by cs.name
having sum(od.saleprice)>=30000;

/*
    실행 순서
    1. from절 테이블명
    2. where, group by
    3. select 절
    4. order 절
*/





-- 서브쿼리 
select cs.name ,sum(od.saleprice)
from (select * from customer
      where custid<=2) cs,
     orders od
where cs.custid = od.custid
group by cs.name;


 