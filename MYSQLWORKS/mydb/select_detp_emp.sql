
select * from department;
select * from employee;
-- 삽입 오류 : 부서 테이블에 아이디가 30이 없어서 에러 
insert into employee values (106,' 양신입', 25, null,30);

-- 급여가 400만원 이상이고 부서번호가 10인  사원을 검색하시오

select * 
from  employee
where sal >=4000000 and deptid =10;
-- 급여가 많은 순으로 정렬하시오
select *from employee order by sal desc;
-- 급여가 없는 사원을 검색하시오
select *from employee where sal is null;
-- 사원의 총인원을 구하시오 급여평균을 구하시오
select count(*), sum(sal),round(avg(sal),-2)from employee;
-- 부서별 급여 총액
select deptid,
		sum(sal)급여총액,
		round(avg(sal),-2)급여평균
from employee
group by deptid;


-- 부서이름을 포함한 사원의 모든 정보를 검색하시오 (조인)
select a.deptname,
		b.*
from department a , employee b
where a.deptid = b.deptid;
-- 내부조인
select a.deptname,
		b.*
from department a join employee b
on a.deptid = b.deptid;
-- using
select a.deptname,
		b.*
from department a join employee b
using (deptid ) ;
-- 부서별 , 부서이름별 급여 총액

select  a.deptid,
		a.deptname,
		sum(b.sal) 급여총액,
		round(avg(b.sal),-2) 급여평균
from department a join employee b
on a.deptid = b.deptid
group by deptid, deptname;

select  a.deptid,
		a.deptname,
		sum(b.sal) 급여총액,
		round(avg(b.sal),-2) 급여평균
from department a join employee b
on a.deptid = b.deptid
group by deptid, deptname with rollup;

-- 최고 급여를 최저급여를받는 사원의 정보 검색하시오
select *
from employee
where sal = (select max(sal)from employee) or sal = (select min(sal)from employee);


-- 백두산 산원의 급여를 430 만원으로 수정하세요
update employee
set sal= 4300000
where empid = 102;

select *from employee;

-- 사원의 급여 순위를 구하시오
select empname, sal,
        rank()  over(order by sal desc)급여순위1,
        dense_rank()  over(order by sal desc)급여순위2
from employee;




