-- ��(vlew) ����
-- update, delete ����� ����� �� ���� 
-- �ּҿ� '���ѹα�' �� �����ϴ� ����� ������ �並 ����ÿ�
create view vw_customer
as select *from customer
where address like '���ѹα�%';

select *from vw_customer;
-- �̸��� �⿬�Ƹ� ���������� ������
update vw_customer
 set name ='������'
 where name ='�迬��';
 -- �� ���̵� 3�� ���� ����
 -- �����ϰ� �ִ� oredr ���̺��� �־ ���� �Ұ� 
delete from vw_customer
 where custid =3;
 
 



--view  ���� 
drop view vw_customer;