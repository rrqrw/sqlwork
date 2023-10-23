-- 계절학기 수강료 , 등록테이블
select * from summer_price;
select * from summer_register;

-- 학생의 모든 수강정보를 검색하시오 
select b.sid,
       b.subject,
      a.price
from summer_price a, summer_register b
where  a.subject = b.subject;
-- 학생의 모든 수강정보를 검색하시오 
-- 내부조인 join ~ on
select b.sid,
       b.subject,
      a.price
from summer_price a join summer_register b
on a.subject = b.subject;


-- 학생의 모든 수강정보를 검색하시오 
-- 내부조인 join~ using 조인칼럼이름이 같은경우만 사용가능
select b.sid,
       subject,
      a.price
from summer_price a join summer_register b
using (subject);

--과목별 수강료 합계를 구하시오
select b.subject,
      sum(a.price)
from summer_price a, summer_register b
where  a.subject = b.subject
group by b.subject;



insert into summer_register values(301,'Python');
insert into summer_price values('Python', 40000);
--과목별 수강료 합계  및 전체 총계를 구하시오
--rollup() , cube()
--NVL(과목, '총계')
--과목이 NULL이 아니면 과목출려, null 이면 '총계'로 출력
select NVL (b.subject, '총계') 수정과목,
      sum(a.price) 수강료합계
from summer_price a, summer_register b
where  a.subject = b.subject
group by rollup (b.subject);
