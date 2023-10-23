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

select name
from customer 
where custid =1;

--������ ���� ���� 
select name
from customer 
where custid in(select custid from orders);

--���ι�� : customer, orders
--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�

select distinct  cus.name
from customer cus , orders ord
where cus.custid = ord.custid;

-- from ���� �ִ� ���� ���� - �ζ��κ��� ��
--����ȣ�� 2 ������ ���� �̸��� ���� �Ǹž� �˻�
-- �׷캰 - group by
-- �� , �� ��ȣ�� 2������ 

-- ���� ���� 
select cs.name ,sum(od.saleprice)
from customer cs, orders od
where cs.custid = od.custid
    and cs.custid<=2
group by cs.name
having sum(od.saleprice)>=30000;

/*
    ���� ����
    1. from�� ���̺��
    2. where, group by
    3. select ��
    4. order ��
*/





-- �������� 
select cs.name ,sum(od.saleprice)
from (select * from customer
      where custid<=2) cs,
     orders od
where cs.custid = od.custid
group by cs.name;


 