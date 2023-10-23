
select * from orders;

-- �ֹ� ���̺��� Į��, �ڷ��� ����
desc orders;




-- ��� �Լ� - ����(count), �հ�(sum) , ���(avg) , �ִ밪(max) , �ּҰ�(min)
-- count(*) : '*' - Į����
-- count(Į����) :
SELECT count(*) as ���ǸŰǼ� 
from orders;

select count(*) as �Ѱ��� , count(phone) as ��ȭ��ȣ�� from customer;

SELECT sum(saleprice) as ���Ǹž�,
        avg(saleprice) as ����վ�
from orders;
-- ���� �ֹ��� ������ ���Ǹž� ���
select sum(saleprice) as ���Ǹž�
from orders;
-- ������ �ֹ��� ������  ���Ǿ��� ���
--�׷����� ������ ��� - group by  Į����
select custid,
        count(*) as ��������,
        sum(saleprice) as ���Ǹž�
from orders
GROUP by custid;
--������ �ֹ��� ������ ���Ǹžװ� ���������� ���
-- ���������� 3�� �̻��� �ڷ�˻�
--having �� ��� - group by������ ������ ������ ��� 
select custid,
        count(*) as ��������,
        sum(saleprice) as ���Ǹž�
from orders
GROUP by custid
having count(*) >=3;
   --and sum(saleprice) >35000;

-- �����߿��� �ִ밡��, �������� �˱� 
select max(price) �ְ��� , min(price) ��������
from book;

 
select * from customer;
-- '3�� ��(�Ȼ�)' �� �ֹ��� ������ �� �Ǹž� ���ϱ�  
select  sum(saleprice) as ���Ǹž�
from orders
where custid = 3;

-- ����(Join)
-- ��������(equi join) : equql(=) �� ����ϴ� ����
-- ���̺�A.Į���� = ���̺�B.Į���� (Į��- �ܷ�Ű)
-- ���� �̸��� ���� �ֹ��� �ֹ������� �˻��Ͻÿ� (customer, orders ����)
select customer.name , orders.saleprice
from customer, orders
where customer.custid = orders.custid;

--��Ī ��� ����
-- �� �̸��� ���� ( �������� )
select cus.name , ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

--3�� ���� ���̵��  �����̸��� �ֹ������� �˻�
select  custid, bookname,saleprice
from orders, book
where orders.bookid = book.bookid;


select  custid,custid,book.bookname,orders,saleprice
from orders, customer,book
where orders.custid =customer.custid
    and orders.bookid = book.bookid
    and customer.name = '�Ȼ�';




