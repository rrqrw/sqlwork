-- �ǽ� ���� 

--1.��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
SELECT name ,address from  customer;
--2.��� ���� �̸�,�ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�
select name ,address, phone from customer;
--3. �ּҰ� '����' �� ���� �˻��Ͻÿ�
SELECT *from customer
where address like '%����%';
--4. ���� �̸��� '�迬��' Ȥ�� '�Ȼ�' �� ���� �˻��Ͻÿ�
select * from customer
where name In('�迬��','�Ȼ�');
--5. �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
select * from customer
where address not like '%���ѹα�%';
--6. ��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
select * from customer
where phone is null;
--7. ���� �̸������� �����Ͻÿ�(��������) ��������(desc)
select * from customer
order by name asc;
--8. ���� ���ο����� ���Ͻÿ�
select count(*) as ���ο�
from customer;

