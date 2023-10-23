--�μ��� ��� ���̺� ����
create table department(
  deptid    number primary key,   --�⺻Ű 
  deptname varchar2(20) not null, -- null ���� 
  location varchar2(20) not null 
);

-- �μ� �ڷ� �߰� 
insert into department(deptid , deptname, location)
values(10,'������','����');
insert into department(deptid , deptname, location)
values(20,'������','��õ');
insert into department(deptid , deptname, location)
values(30,'��������','����');
--���� 
commit;

--�ڷ� �˻� (Ư�� Į�� �˻�)
select deptid, deptname from department;

--��� Į�� �˻� ('*' ���)
select * from department;

--Ư���� ������(��: �ο�) �˻� -> where ������ ��� 
--�μ��̸��� ��������  row(���ڵ�) �˻� 
select * from department 
where deptname = '������';


--�ڷ� ���� (�μ���ȣ�� 20���� �ο��� �μ��̸� ����  ������ -> �濵��)
update department set deptname = '�濵��'
where deptid = 20;

rollback; --commit ������ �����ϸ� ��ҵ� 

--�ڷ� ���� (�μ� ��ȣ�� 30���� �������� ����)
delete  from  department 
where deptid = 30;

