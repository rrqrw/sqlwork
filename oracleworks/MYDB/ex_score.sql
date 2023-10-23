-- rownum(�ο��ȣ,���ȣ)
-- �� ���� �����ϰ� ���� �� ��� sudo columne �̶���
create table ex_score(
    name varchar2(20),
    score number(3)
);

insert into ex_score values('���ϳ�',94);
insert into ex_score values('���ϳ�',94);
insert into ex_score values('���ϳ�',100);
insert into ex_score values('���ϳ�',97);
insert into ex_score values('���ϳ�',87);
insert into ex_score values('���ϳ�',87);
insert into ex_score values('���ϳ�',91);
insert into ex_score values('���ϳ�',77);
insert into ex_score values('���ϳ�',80);
insert into ex_score values('���ϳ�',95);

select * from ex_score;
--1���� 5����� ���� ���
select rownum,name, score
from ex_score 
where rownum >=1 and rownum <= 5;

select rownum,name, score
from ex_score 
where rownum BETWEEN 1 and 5;
--2���� 6�� ���� ������ �˻�
--rownum �� 1���͸� �����ؾ���
select rownum,name, score
from ex_score 
where rownum>=2 and rownum <= 6;

-- ������ ���������� �����Ͽ� �˻��Ͻÿ�
select * 
from ex_score 
order by score Desc;

--������ ���� ������ 5���� �˻��Ͻÿ� 
select rownum,name, score
from ex_score 
where  rownum <=5
order by score Desc;

-- ������ ������������ ������ �� 5��
/*
  ���� ����
  1.from�� ���̺��
  2.where, group by
  3.select ��
  4.order ��
 */
select rownum,name, score
from  (select rownum,name, score from ex_score order by score Desc)
where  rownum <=5;

-- �������� 
select name, score ,rank() over(order by score Desc)��������,
   dense_rank() over(order by score Desc)��������2

from ex_score;



