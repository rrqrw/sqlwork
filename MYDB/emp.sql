-- emp 테이블 
create table emp(
    empno        number(3) primary key,  -- 사원번호 
    ename        VARCHAR2(20) not null,  -- 사원이름
    gender       VARCHAR2(6) not null,  -- 성별
    salary       number(10),                -- 급여
    hire_date    VARCHAR2(20) not null      -- 입사일
    
);

-- 자료생성
insert into emp values(100,'이강', '남자' , 3000000,'2019-01-01');
insert into emp values(101,'김산', '여자' , 2500000,'2020-05-15');
insert into emp values(102,'오상식', '남자' , 5000000,'2015-02-22');
insert into emp values(103,'박신입', '여자' , null,'2023-10-01');

commit;

select * from emp;

-- 실습 문제 풀이 
-- 1. 사원을 입사일 순으로 정렬하시오 ( 오름차순 정렬) 
select * from emp
order by hire_date;
--2. 사원을 급여순으로 정렬하시오
select * from emp
order by salary;
--3. 급여가 300만원 이하인 사원을 급여가 많은 순으로 정렬하시오 
select  * from emp
where salary <= 3000000
order by salary;
--4 급여가 없는 사원을 검색하시오
select  * from emp
where salary is null;
--5. 사원의 총 수를 구하시오 
select   count(*) 사원수 from emp;

--6. 사원의 급여 합계와 평균을 구하시오 
select 
    sum(salary)합계 ,
    avg(salary) 평균
from emp ;

--7. 이름이 김산인 사원의 성별을 남자로 변경하시오
update emp set gender= '남자'
where ename = '김산';

--8. 이름이 오상식인 사원을 삭제 하시오
DELETE from emp 
where ename = '오상식';

select *from emp;

