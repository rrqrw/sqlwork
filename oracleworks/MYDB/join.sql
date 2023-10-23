--���� : �� ���̺��� ���� �����Ͽ� ����ϴ� ���
-- �������� : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
-- �ܺ����� : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���

--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻��Ͻÿ� 
--���̸����� ����(�ڵ����� �׷�ȭ ��)
-- ī�׽þȰ�:customer(60)
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name;
--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻��Ͻÿ� 
--����: '������' ���� �ֹ������� �˻��Ͻÿ�
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
and cus.name = '������'
order by cus.name;
--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻��Ͻÿ� 
--�ֹ� �ݾ��� �Ѿ��� ���(group by ���)
-- �迬�� ���� �ֹ� �ѱݾ��� ���(having ���� ������ ��)
select cus.custid, cus.name, sum(ord.saleprice)
from customer cus, orders ord
where cus.custid = ord.custid
group by cus.name, cus.custid
 having cus.name = '�迬��'
order by cus.name;



-- �ֹ����� ���� �����͵� ��� �˻�
-- ������ ��ġ���� ���� ���̺� +�� �־��� 
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid(+)
order by cus.name;
--���� �̸� , �ֹ��� ���� �̸� , �ֹ��� , �ֹ��ݾ�
select  cus.name , bk.bookname, ord.orderdate, ord.saleprice
from customer cus , book bk , orders ord
where cus.custid = ord.custid  -- �⺻Ű = �ܷ�Ű
    and bk.bookid = ord.bookid;
       
    
  --ǥ�� ���� (ansi sql)
  -- �������� (inner join )
--��(customer)�� ���� �ֹ�(order)�� ���� �����͸� ��� �˻��Ͻÿ�
-- ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ� 
select cus.name, ord.saleprice
from customer cus inner join orders ord  ---inner �� ��������
    on cus.custid = ord.custid
order by cus.name;

-- �ܺ� ����(outer join)
-- join ���ǿ� �����ϴ� �����Ͱ� �ƴϾ ����ϴ±��
--��(customer)�� ���� �ֹ�(order)�� ���� ��������
-- �ֹ����� ���� �����͸� �����Ͽ� ���� �̸��� ���� �ֹ���
-- ������ �ǸŰ����� �˻��Ͻÿ� 
SELECT cus.name, ord.saleprice
from customer cus left outer join orders ord 
    on cus.custid = ord.custid
order by cus.name;
    
    
    