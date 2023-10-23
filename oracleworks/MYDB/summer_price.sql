--������ ���̺� 
create table summer_price(
    subject varchar2(20) primary key,
    price   number
);

insert into summer_price  values('C',30000);
insert into summer_price  values('Java',45000);
insert into summer_price  values('Python',40000);

-- �����б� ��� ���̺� 
create table summer_register(
    sid     number primary key,
    subject varchar2(20),
    foreign key(subject) REFERENCES summer_price(subject)
);

insert into summer_register values(100,'C'); 
insert into summer_register values(101,'Java');
insert into summer_register values(200,'Python');
insert into summer_register values(201,'Java');

-- ���� �̻���� 
--200�� �л��� ������û ��� 
DELETE from summer_register
where sid=200;
-- Python ������ �������?
select price 
from summer_price
where subject = 'Python';
-- ���� �̻����
-- ������ ���̺� 'C++' ���¸� 35,000���� ���� 
insert into summer_price  values('C++',35000);

--java �����Ḧ  45000������ 40000������ �����ϱ� 
UPDATE summer_price 
    set price = 40000
where  subject = 'Java';
-- �����ᰡ ����� ������?
select min(price) from summer_price;
--���� ����(��������)
select subject 
from summer_price 
where price =(select min(price) from summer_price);

select * from  summer_register;
select * from  summer_price;
drop table summer_price;
drop table summer_register;
commit;