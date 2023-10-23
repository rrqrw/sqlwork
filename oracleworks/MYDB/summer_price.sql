--수강료 테이블 
create table summer_price(
    subject varchar2(20) primary key,
    price   number
);

insert into summer_price  values('C',30000);
insert into summer_price  values('Java',45000);
insert into summer_price  values('Python',40000);

-- 여름학기 등록 테이블 
create table summer_register(
    sid     number primary key,
    subject varchar2(20),
    foreign key(subject) REFERENCES summer_price(subject)
);

insert into summer_register values(100,'C'); 
insert into summer_register values(101,'Java');
insert into summer_register values(200,'Python');
insert into summer_register values(201,'Java');

-- 삭제 이상없음 
--200번 학생의 수강신청 취소 
DELETE from summer_register
where sid=200;
-- Python 과목의 수강료는?
select price 
from summer_price
where subject = 'Python';
-- 삽입 이상없음
-- 수강료 테이블에 'C++' 강좌를 35,000으로 삽입 
insert into summer_price  values('C++',35000);

--java 수강료를  45000원에서 40000원으로 변경하기 
UPDATE summer_price 
    set price = 40000
where  subject = 'Java';
-- 수강료가 가장싼 과목은?
select min(price) from summer_price;
--메인 쿼리(서브쿼리)
select subject 
from summer_price 
where price =(select min(price) from summer_price);

select * from  summer_register;
select * from  summer_price;
drop table summer_price;
drop table summer_register;
commit;