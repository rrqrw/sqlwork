-- ㅇㅕ름학기 테이블 
create table summer_class(
    sid         number,         -- 학번
    subject     varchar2(20),   -- 수강과목
    price       number          -- 수강료
);

insert into summer_class values(100, 'C',30000);
insert into summer_class values(101, 'Java',45000);
insert into summer_class values(200, 'Pyhon',40000);
insert into summer_class values(201, 'Java',45000);

-- 계절학기를 수강하는 학생의 학번과 수강하는 과목은?
SELECT sid 학번,subject 수강과목 from summer_class;

-- 'Pyhon' 강좌의 수강료는?
select price from summer_class
where subject = 'Pyhon';
-- 여름학기를 듣는 학생수와 수강료 총액은?
select count(*) 학생수 ,
        sum(price)총액
from summer_class;
-- 200번 학생이 수강취소 (삭제)
DELETE  from summer_class
where sid = 200;

-- 삭제 이상
-- 'Pyhon' 강좌의 수강료는?
select price 
from summer_class
where subject = 'Pyhon';

-- C++ 강좌개설 : 신청한 학생이 없음 
insert into summer_class values (null, 'C++',35000);

--학생3명, 튜플은 4개
select count(*) 수강인원
from summer_class;

select count(sid) 수강인원
from summer_class;


--java 수강료가 45,000원에서 40,000원으로 변경
UPDATE summer_class
  set price =40000
  where subject='Java';

-- 만약 update 문을 다음처럼 이상현상 발생
--1건만 수정
UPDATE summer_class
  set price =40000
  where subject='Java'
  and sid=101;

-- Java 수강료는?
select price from summer_class
where subject = 'Java';

rollback;

commit;
select *from summer_class;