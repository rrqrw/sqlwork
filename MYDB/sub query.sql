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

/*select name
from customer 
where custid in(1,2,3,4);*/


select name
from customer 
where custid in(select custid from orders);

--조인방식 : customer, orders
--도서를 구매한 적이 있는 고객의 이름을 검색하시오

select distinct  cus.name
from customer cus , orders ord
where cus.custid = ord.custid;



 