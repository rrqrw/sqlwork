-- ������ ���̺� 
create table entertainers(
    name        varchar2(30),
    birthday    varchar2(20),
    job         varchar2(30)
);

insert into entertainers
values('�絿��','19790601','���,����');
insert into entertainers
values('������','19920904','���');
insert into entertainers
values('�����','19820220','����,�۰�');
commit;
-- ��1����ȭ ���
-- �Ӽ����� ���ڰ��̾�� �Ѵ�.
-- ������ ������ �������� ? �˻��� ������� ����
select *
from entertainers
where job = '%����%';

-- ������ ���̺� , ���� ���̺�� ���� 
create table entertainer(
    name    varchar2(20),
    birthday varchar2(20)
    );
insert into entertainer
values('�絿��','19790601');
insert into entertainer
values('������','19920904');
insert into entertainer
values('�����','19820220');



create table job(
    ename varchar2(20),
    jobname varchar2(30)
);

insert into job
values('�絿��','���');
insert into job
values('�絿��','����');
insert into job
values('������','���');
insert into job
values('�����','����');
insert into job
values('�����','�۰�');
select*from entertainer;
select* from job;

-- �������� �̸��� �������, ���� ������ �˻��Ͻÿ�
-- �������� 
select a.name,
        a.birthday,
        b.jobname
from entertainer a , job b
where a.name = b.ename;



-- �������� (inner join)

select a.name,
        a.birthday,
        b.jobname
from entertainer a join job b
on a.name = b.ename;
