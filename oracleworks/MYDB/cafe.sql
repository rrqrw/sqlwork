--주문테이블 생성
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

--음료테이블
create table drink(
drink_code  varchar(3) primary key,
drink_name varchar(30) not null
);
insert into drink VALUES('A01','아메리카노');
insert into drink VALUES('B01','카페라떼');
insert into drink VALUES('C01','자몽');
select * from drink;

drop table cafe_order;
drop table drink;
--동등조인
select a.order_no,
       a.drink_code,
       b.drink_name,
       a.order_cnt
from cafe_order a, drink b
where a.drink_code =b.drink_code;
--내부조인 
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
--주문이 없는 음료를 포함하여 모든 주문 정보를 출려하시오 
select a.order_no,
       b.drink_code,
       b.drink_name,
       a.order_cnt
from cafe_order a right join drink b
on a.drink_code =b.drink_code;

