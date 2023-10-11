-- �л� ���̺� ����
create table student(
    snumber  number primary key,
    sname   varchar2(20) not null,
    age     number(2)  not null,
    gender  varchar2(6) not null,
    address varchar2(50),
    mname   varchar2(30) not null,
    foreign key(mname) references major(mname) --�ܷ�Ű

);
-- �л� �߰� 
insert into student(snumber,sname,age,gender,address,mname)
values (1001, '�̰�' , 22 , '����' , '����� ������', '����Ʈ�����а�');
insert into student(snumber,sname,age,gender,address,mname)
values (1002, '�ڴ��' , 34 , '����' , '��õ�� ����', '�������ڰ��а�');
insert into student(snumber,sname,age,gender,address,mname)
values (1003, '�쿵��' , 31 , '����' , '', '�������ڰ��а�');
--�θ�Ű�� ���� �����ʹ� ���� �̻�߻� 
insert into student(snumber,sname,age,gender,address,mname)
values (1003, '���' , 29 , '����' , '����� ���빮��', 'ȸ���а�');


--��ü �л���ȸ
select* from student;

-- �̸��� �̰��� �л��� �й��� �̸��� ���̸� ��ȸ�ϱ� 
select snumber,sname,age from student where sname='�̰�';

--�̸��� '��'�� ���Ե� �л��� ��� ������ ����Ͻÿ� 
select* from student
where sname Like '%��%';

-- ���̰� 30�� �̻��̰� ������ ������ �л��� ��� ������ ���
select* from student
where age >=30 and gender ='����';
--�ּҰ� ���� �л��� ������ ����Ͻÿ� 
select* from student
where address is null;
-- �ּҰ� ���� �л� �����ϱ� (null)
delete from student 
where address is null;
-- �ּҰ� ���� �л� �����ϱ�(���鹮��)
delete from student 
where address = ' ';
-- �ּҰ� null�� �����Ϳ� '������ ���뱸' �� �Է�
update student set address  = '������ ���뱸'
where address is null;
-- Ʈ�����(�ѹ��� Ŀ���ϱ����� �����ϸ� ���, �����̵�)
rollback;

-- �����ϱ� (��������-ASC , ��������-DESC)
-- �л��� ���̰� ���� ������ �����Ͽ� ����Ͻÿ� 
select*from student
order by age;

-- �а����� '�������ڰ��а�'�л��߿��� ���̰� ���� ������ �����Ͽ� ����Ͻÿ� 
select*from student
where mname = '�������ڰ��а�'
order by age DESC;


commit;
DROP TABLE student;