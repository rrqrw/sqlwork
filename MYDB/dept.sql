-- dept ���̺� 
create table dept(
  deptid    number primary key,   --�⺻Ű 
  deptname varchar2(20) not null, -- null ���� 
  location varchar2(20) not null 
);
--�μ��ڷ��߰�
insert into dept(deptid , deptname, location)
values(10,'������','����');
insert into dept(deptid , deptname, location)
values(20,'������','��õ');
insert into dept(deptid , deptname, location)
values(30,'��������','����');


select * from dept;
commit;

-- �μ��̸����� ���� ������ �̸��� ����Ͻÿ� 
select  substr(deptname,1,length(deptname)-1)as ���� ,
        replace(deptname,'��', '') as ����2
from dept;