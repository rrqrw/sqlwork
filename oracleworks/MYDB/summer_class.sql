-- ���Ÿ��б� ���̺� 
create table summer_class(
    sid         number,         -- �й�
    subject     varchar2(20),   -- ��������
    price       number          -- ������
);

insert into summer_class values(100, 'C',30000);
insert into summer_class values(101, 'Java',45000);
insert into summer_class values(200, 'Pyhon',40000);
insert into summer_class values(201, 'Java',45000);

-- �����б⸦ �����ϴ� �л��� �й��� �����ϴ� ������?
SELECT sid �й�,subject �������� from summer_class;

-- 'Pyhon' ������ �������?
select price from summer_class
where subject = 'Pyhon';
-- �����б⸦ ��� �л����� ������ �Ѿ���?
select count(*) �л��� ,
        sum(price)�Ѿ�
from summer_class;
-- 200�� �л��� ������� (����)
DELETE  from summer_class
where sid = 200;

-- ���� �̻�
-- 'Pyhon' ������ �������?
select price 
from summer_class
where subject = 'Pyhon';

-- C++ ���°��� : ��û�� �л��� ���� 
insert into summer_class values (null, 'C++',35000);

--�л�3��, Ʃ���� 4��
select count(*) �����ο�
from summer_class;

select count(sid) �����ο�
from summer_class;


--java �����ᰡ 45,000������ 40,000������ ����
UPDATE summer_class
  set price =40000
  where subject='Java';

-- ���� update ���� ����ó�� �̻����� �߻�
--1�Ǹ� ����
UPDATE summer_class
  set price =40000
  where subject='Java'
  and sid=101;

-- Java �������?
select price from summer_class
where subject = 'Java';

rollback;

commit;
select *from summer_class;