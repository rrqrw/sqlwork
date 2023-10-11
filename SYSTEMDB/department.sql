--부서와 사원 테이블 생성
create table department(
  deptid    number primary key,   --기본키 
  deptname varchar2(20) not null, -- null 불허 
  location varchar2(20) not null 
);

-- 부서 자료 추가 
insert into department(deptid , deptname, location)
values(10,'전산팀','서울');
insert into department(deptid , deptname, location)
values(20,'관리팀','인천');
insert into department(deptid , deptname, location)
values(30,'마케팅팀','수원');
--저장 
commit;

--자료 검색 (특정 칼럼 검색)
select deptid, deptname from department;

--모든 칼럼 검색 ('*' 사용)
select * from department;

--특정한 데이터(행: 로우) 검색 -> where 조건절 사용 
--부서이름이 전산팀인  row(레코드) 검색 
select * from department 
where deptname = '전산팀';


--자료 수정 (부서번호가 20번인 로우의 부서이름 변경  관리팀 -> 경영팀)
update department set deptname = '경영팀'
where deptid = 20;

rollback; --commit 이전에 실행하면 취소됨 

--자료 삭제 (부서 번호가 30번인 마케팅팀 삭제)
delete  from  department 
where deptid = 30;

