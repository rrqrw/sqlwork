-- department ���̺� ����
CREATE table department(
    deptno      varchar2(4) primary key,
    deptname    varchar2(20)  not null,   
    office      varchar2(20)
);


insert into department values('1000','�λ���','����');
insert into department values('1001','������','��õ');
insert into department values('1002','������','����');
insert into department(deptno, deptname) values('1003','������');


commit;



-- employee ���̺� ���� 
create table employee(
    empno   number(3) primary key,
    empname varchar2(20) not null,
    sal     number(10),
    creatdate date default sysdate,
    deptno  varchar2(4), 
    foreign key(deptno)   references department(deptno) --�ܷ�Ű
);

insert into employee values(100,'�̰�',2500000,sysdate,'1000');
insert into employee values(101,'����',2000000,sysdate,'1001');
insert into employee values(102,'�ڴ�',3000000,sysdate,'1002');
insert into employee values(103,'���¾�',3500000,sysdate,'1000');
insert into employee values(104,'�ֿ���',5000000,sysdate,'1001');
insert into employee values(105,'�쿵��',4000000,sysdate,'1002');
select *from employee;


-- '1002'�� �μ��̸��� '�ѹ���'���� �����ϱ�
update department
set deptname= '�ѹ���'
where deptno = '1002';

-- '���¾�' �� �޿��� 3000000 ���� �����ϱ� 
update employee
set sal =3000000
where empname = '���¾�';

-- �μ��� �޿� �Ѿ��� ���Ͻÿ� 
select  deptno,sum(sal)�޿��Ѿ�
from employee 
group by deptno;



-- �μ��̸��� �μ��� �޿� �Ѿ��� ����Ͻÿ�
-- employee , department ���̺� ���(����)
select  a.deptno, 
        a.deptname,
        sum(b.sal)
from department a,employee b
where a.deptno = b.deptno
group by a.deptno , a.deptname;

-- rollup(Į��1,Į��2) : group by ������ �Ұ� , �Ѱ踦 ���� 
select  a.deptno, 
        sum(b.sal)
from department a,employee b
where a.deptno = b.deptno
group by rollup(a.deptno);

-- cube(Į��1,Į��2) : group by ������ �Ұ� , �Ѱ踦 ��ü������ ����
select  a.deptno, 
        a.deptname,
        sum(b.sal)
from department a,employee b
where a.deptno = b.deptno
group by cube(a.deptno,a.deptname)
order by a.deptno;

--sum() , sum over() - �����հ�
-- Į���� ���� �ҹ��ڷ� ǥ���Ҷ� �ֵ���ǥ�� �����
select  empno,
        empname,
        sal,
       sum(sal)over(order by empno) "sal_sum"
from employee;

-- ���� rank()  over(order by Į����) �Լ� 
select  empno,
        empname,
        sal,
       Rank() over (order by sal desc) �޿�_rank,
      dense_Rank() over (order by sal desc) �޿�_dense_rank
from employee;



