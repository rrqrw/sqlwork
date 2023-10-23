-- department 테이블 생성
CREATE table department(
    deptno      varchar2(4) primary key,
    deptname    varchar2(20)  not null,   
    office      varchar2(20)
);


insert into department values('1000','인사팀','서울');
insert into department values('1001','전산팀','인천');
insert into department values('1002','전산팀','수원');
insert into department(deptno, deptname) values('1003','영업팀');


commit;



-- employee 테이블 생성 
create table employee(
    empno   number(3) primary key,
    empname varchar2(20) not null,
    sal     number(10),
    creatdate date default sysdate,
    deptno  varchar2(4), 
    foreign key(deptno)   references department(deptno) --외래키
);

insert into employee values(100,'이강',2500000,sysdate,'1000');
insert into employee values(101,'강산',2000000,sysdate,'1001');
insert into employee values(102,'박달',3000000,sysdate,'1002');
insert into employee values(103,'강태양',3500000,sysdate,'1000');
insert into employee values(104,'최우주',5000000,sysdate,'1001');
insert into employee values(105,'우영우',4000000,sysdate,'1002');
select *from employee;


-- '1002'번 부서이름을 '총무팀'으로 변경하기
update department
set deptname= '총무팀'
where deptno = '1002';

-- '강태양' 의 급여를 3000000 으로 변경하기 
update employee
set sal =3000000
where empname = '강태양';

-- 부서별 급여 총액을 구하시오 
select  deptno,sum(sal)급여총액
from employee 
group by deptno;



-- 부서이름과 부서별 급여 총액을 출력하시오
-- employee , department 테이블 사용(조인)
select  a.deptno, 
        a.deptname,
        sum(b.sal)
from department a,employee b
where a.deptno = b.deptno
group by a.deptno , a.deptname;

-- rollup(칼럼1,칼럼2) : group by 절에서 소계 , 총계를 만듬 
select  a.deptno, 
        sum(b.sal)
from department a,employee b
where a.deptno = b.deptno
group by rollup(a.deptno);

-- cube(칼럼1,칼럼2) : group by 절에서 소계 , 총계를 입체적으로 만듬
select  a.deptno, 
        a.deptname,
        sum(b.sal)
from department a,employee b
where a.deptno = b.deptno
group by cube(a.deptno,a.deptname)
order by a.deptno;

--sum() , sum over() - 누적합계
-- 칼럼명 영어 소문자로 표기할때 쌍따옴표로 묶어둠
select  empno,
        empname,
        sal,
       sum(sal)over(order by empno) "sal_sum"
from employee;

-- 순위 rank()  over(order by 칼럼명) 함수 
select  empno,
        empname,
        sal,
       Rank() over (order by sal desc) 급여_rank,
      dense_Rank() over (order by sal desc) 급여_dense_rank
from employee;



