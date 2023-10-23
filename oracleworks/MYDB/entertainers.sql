-- 연예인 테이블 
create table entertainers(
    name        varchar2(30),
    birthday    varchar2(20),
    job         varchar2(30)
);

insert into entertainers
values('양동근','19790601','배우,가수');
insert into entertainers
values('박은빈','19920904','배우');
insert into entertainers
values('장기하','19820220','가수,작가');
commit;
-- 제1정규화 대상
-- 속성값이 원자값이어야 한다.
-- 직업이 가수인 연예인은 ? 검색의 어려움이 있음
select *
from entertainers
where job = '%가수%';

-- 연예인 테이블 , 직업 테이블로 분해 
create table entertainer(
    name    varchar2(20),
    birthday varchar2(20)
    );
insert into entertainer
values('양동근','19790601');
insert into entertainer
values('박은빈','19920904');
insert into entertainer
values('장기하','19820220');



create table job(
    ename varchar2(20),
    jobname varchar2(30)
);

insert into job
values('양동근','배우');
insert into job
values('양동근','가수');
insert into job
values('박은빈','배우');
insert into job
values('장기하','가수');
insert into job
values('장기하','작가');
select*from entertainer;
select* from job;

-- 연예인의 이름과 생년월일, 직업 정보를 검색하시오
-- 동등조인 
select a.name,
        a.birthday,
        b.jobname
from entertainer a , job b
where a.name = b.ename;



-- 내부조인 (inner join)

select a.name,
        a.birthday,
        b.jobname
from entertainer a join job b
on a.name = b.ename;
