--��� ���̺� ���� 
create table employee(
    empid   number(3),
    empname varchar2(20) not null,
    age     number(3),
    deptid  number, 
    primary key(empid),      -- �⺻Ű
    foreign key(deptid)   references department(deptid) --�ܷ�Ű
);

-- ��� �ڷ� �߰� 
insert into employee(empid , empname, age,deptid)
values (101,'�̰�',27,10);
insert into employee(empid , empname, age,deptid)
values (102,'���',34,30); -- �μ��ڵ尡 ��� �ܷ�Ű ���� 
insert into employee(empid , empname, deptid)
values (103,'����',20);
insert into employee(empid , empname,age, deptid)
values (104,'���Ѱ�',41,20);

-- ��� ����� ���� ���
SELECT * from employee;

--����̸��� ���� Į����� 
SELECT empname ,age from employee;


--����̸��� ����� ������ ��� 
SELECT * from employee
where empname ='���';
--���̰� 30�� �̻��� ��� �˻�
SELECT * from employee
where age>= 30;

--�μ���ȣ�� 20�� ��� �˻�
SELECT * from employee
where deptid =20;
--���̰� �Էµ��� ���� ��� �˻�
SELECT * from employee
where age is null;

commit;


drop table employee;


