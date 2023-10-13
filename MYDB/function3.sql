-- ���ǿ� ���� �Լ�: 
-- decode(Į����, ����, ���ΰ�, �����ΰ�)
-- ������ �����̸� 'M' , �����̸�'F'�� ���
select  ename ����̸�,
        gender ����,
        decode(gender, '����','M','F') gender    
from emp;

-- ���Ǳ���(IF ~ ELSE�� ���� )
/*
    case
        when ����1  then ��� 1
        when ����2  then ��� 2
        else ���3
    end Į����
*/
select ename �����ȣ,
        gender ����,
    case
        when gender= '����' then 'M'
        else 'F'
    end gender
from emp;

-- �޿��� ���� ���� ǥ��
-- �޿��� 350���� �̻��̸� ������ '����'���� ǥ���ϰ�
-- �޿��� 250���� �̻��̸� ������ '�븮' �� ǥ���ϰ�
-- �������� '���'���� ǥ��
select ename,
        salary,
        case
          when salary >= 3500000   then '����'
          when salary >= 2500000   then '�븮'
         else '���'
        end ����
 from emp;   
 
 -- salary �� ����
 select count(salary)
 from emp;
 
 -- null���� 0�� ǥ��
 -- NVL(�μ�1, �μ�2 ) 
 --�μ� 1�� null �� �ƴϸ� �μ�1 ���
 -- �μ�1 �� null�̸� �μ�2 ���
 
 select ename,
        nvl(salary, 0) �޿� 
 from emp;

-- �ǽ� ���̺� ���� 
create table k1(
    id   VARCHAR2(3),
    cnt number(2)
);

insert into k1 values('��' , 5);
insert into k1 values('��' , null);
insert into k1 values('��' , 5);
insert into k1 values('��' , null);
insert into k1 values('��' , 10);

select * from k1;
select nvl(cnt,0) from k1;

select count(nvl(salary,0))
from emp;
select nvl(cnt,0) from k1;
-- ���� ���ϱ� 
select count(cnt) from k1;  --3
select count(nvl(cnt,0))from k1; --5

// ��� ���ϱ�
select round ((sum(cnt) / count(cnt)),1) from k1;--6.7
select sum(cnt) / count (nvl(cnt,0)) from k1; --4

-- �ּҰ� ���ϱ� 
select min(nvl(cnt,5))  from k1;--5






select *from emp;