-- dept 테이블 
create table dept(
  deptid    number primary key,   --기본키 
  deptname varchar2(20) not null, -- null 불허 
  location varchar2(20) not null 
);
--부서자료추가
insert into dept(deptid , deptname, location)
values(10,'전산팀','서울');
insert into dept(deptid , deptname, location)
values(20,'관리팀','인천');
insert into dept(deptid , deptname, location)
values(30,'마케팅팀','수원');


select * from dept;
commit;

-- 부서이름에서 팀을 제외한 이름을 출력하시오 
select  substr(deptname,1,length(deptname)-1)as 팀명 ,
        replace(deptname,'팀', '') as 팀명2
from dept;