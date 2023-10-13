-- emp ���̺� 
create table emp(
    empno        number(3) primary key,  -- �����ȣ 
    ename        VARCHAR2(20) not null,  -- ����̸�
    gender       VARCHAR2(6) not null,  -- ����
    salary       number(10),                -- �޿�
    hire_date    VARCHAR2(20) not null      -- �Ի���
    
);

-- �ڷ����
insert into emp values(100,'�̰�', '����' , 3000000,'2019-01-01');
insert into emp values(101,'���', '����' , 2500000,'2020-05-15');
insert into emp values(102,'�����', '����' , 5000000,'2015-02-22');
insert into emp values(103,'�ڽ���', '����' , null,'2023-10-01');

commit;

select * from emp;

-- �ǽ� ���� Ǯ�� 
-- 1. ����� �Ի��� ������ �����Ͻÿ� ( �������� ����) 
select * from emp
order by hire_date;
--2. ����� �޿������� �����Ͻÿ�
select * from emp
order by salary;
--3. �޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ� 
select  * from emp
where salary <= 3000000
order by salary;
--4 �޿��� ���� ����� �˻��Ͻÿ�
select  * from emp
where salary is null;
--5. ����� �� ���� ���Ͻÿ� 
select   count(*) ����� from emp;

--6. ����� �޿� �հ�� ����� ���Ͻÿ� 
select 
    sum(salary)�հ� ,
    avg(salary) ���
from emp ;

--7. �̸��� ����� ����� ������ ���ڷ� �����Ͻÿ�
update emp set gender= '����'
where ename = '���';

--8. �̸��� ������� ����� ���� �Ͻÿ�
DELETE from emp 
where ename = '�����';

select *from emp;

