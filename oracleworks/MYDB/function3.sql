-- 조건에 관련 함수: 
-- decode(칼럼명, 조건, 참인값, 거짓인값)
-- 성별이 남자이면 'M' , 여자이면'F'로 출력
select  ename 사원이름,
        gender 성별,
        decode(gender, '남자','M','F') gender    
from emp;

-- 조건구문(IF ~ ELSE과 유사 )
/*
    case
        when 조건1  then 결과 1
        when 조건2  then 결과 2
        else 결과3
    end 칼럼명
*/
select ename 사원번호,
        gender 성별,
    case
        when gender= '남자' then 'M'
        else 'F'
    end gender
from emp;

-- 급여에 따른 직급 표시
-- 급여가 350만원 이상이면 직급을 '과장'으로 표시하고
-- 급여가 250만원 이상이면 직급을 '대리' 로 표시하고
-- 나머지는 '사원'으로 표시
select ename,
        salary,
        case
          when salary >= 3500000   then '과장'
          when salary >= 2500000   then '대리'
         else '사원'
        end 직급
 from emp;   
 
 -- salary 의 개수
 select count(salary)
 from emp;
 
 -- null값에 0을 표시
 -- NVL(인수1, 인수2 ) 
 --인수 1이 null 이 아니면 인수1 출력
 -- 인수1 이 null이면 인수2 출력
 
 select ename,
        nvl(salary, 0) 급여 
 from emp;

-- 실습 테이블 생성 
create table k1(
    id   VARCHAR2(3),
    cnt number(2)
);

insert into k1 values('가' , 5);
insert into k1 values('나' , null);
insert into k1 values('다' , 5);
insert into k1 values('라' , null);
insert into k1 values('마' , 10);

select * from k1;
select nvl(cnt,0) from k1;

select count(nvl(salary,0))
from emp;
select nvl(cnt,0) from k1;
-- 개수 구하기 
select count(cnt) from k1;  --3
select count(nvl(cnt,0))from k1; --5

// 평균 구하기
select round ((sum(cnt) / count(cnt)),1) from k1;--6.7
select sum(cnt) / count (nvl(cnt,0)) from k1; --4

-- 최소값 구하기 
select min(nvl(cnt,5))  from k1;--5






select *from emp;