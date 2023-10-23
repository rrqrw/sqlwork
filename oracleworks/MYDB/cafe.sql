--�ֹ����̺� ����
create table cafe_order(
    order_no       varchar2(10) primary key,
    drink_code     varchar2(3)not null,
    order_cnt       number not null,
    foreign key(drink_code) REFERENCES drink(drink_code)
);
insert into cafe_order VALUES('2023100101','A01',3);
insert into cafe_order VALUES('2023100102','B01',1);
insert into cafe_order VALUES('2023100123','A01',2);

select * from cafe_order;

--�������̺�
create table drink(
drink_code  varchar(3) primary key,
drink_name varchar(30) not null
);
insert into drink VALUES('A01','�Ƹ޸�ī��');
insert into drink VALUES('B01','ī���');
insert into drink VALUES('C01','�ڸ�');
select * from drink;

drop table cafe_order;
drop table drink;
--��������
select a.order_no,
       a.drink_code,
       b.drink_name,
       a.order_cnt
from cafe_order a, drink b
where a.drink_code =b.drink_code;
--�������� 
select a.order_no,
       a.drink_code,
       b.drink_name,
       a.order_cnt
from cafe_order a join drink b
on a.drink_code =b.drink_code;

select a.order_no,
       drink_code,
       b.drink_name,
       a.order_cnt
from cafe_order a join drink b
using (drink_code) ;

commit;
--�ֹ��� ���� ���Ḧ �����Ͽ� ��� �ֹ� ������ ����Ͻÿ� 
select a.order_no,
       b.drink_code,
       b.drink_name,
       a.order_cnt
from cafe_order a right join drink b
on a.drink_code =b.drink_code;

