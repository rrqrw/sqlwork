-- ���� ���� (sub query)


--������ ������ ���� ���� ������ �˻��Ͻÿ�
-- max(prprice):35000
select max(price)from book;

-- �����߿��� ���� ��� ������ �̸��� �˻��Ͻÿ�
select bookname,price
from book
where price = (select max(price)from book);

--������ ������ ���� �մ� ���� �̸��� �˻��Ͻÿ�
select custid from orders;

/*select name
from customer 
where custid in(1,2,3,4);*/


select name
from customer 
where custid in(select custid from orders);

--���ι�� : customer, orders
--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�

select distinct  cus.name
from customer cus , orders ord
where cus.custid = ord.custid;



 