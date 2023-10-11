--사원 테이블 생성 
create table employee(
    empid   number(3),
    empname varchar2(20) not null,
    age     number(3),
    deptid  number, 
    primary key(empid),      -- 기본키
    foreign key(deptid)   references department(deptid) --외래키
);

-- 사원 자료 추가 
insert into employee(empid , empname, age,deptid)
values (101,'이강',27,10);
insert into employee(empid , empname, age,deptid)
values (102,'김산',34,30); -- 부서코드가 없어서 외래키 제약 
insert into employee(empid , empname, deptid)
values (103,'정들',20);
insert into employee(empid , empname,age, deptid)
values (104,'남한강',41,20);

-- 모든 사원의 정보 출력
SELECT * from employee;

--사원이름과 나이 칼럼출력 
SELECT empname ,age from employee;


--사원이름이 김산인 데이터 출력 
SELECT * from employee
where empname ='김산';
--나이가 30세 이상인 사원 검색
SELECT * from employee
where age>= 30;

--부서번호가 20인 사원 검색
SELECT * from employee
where deptid =20;
--나이가 입력되지 않은 사원 검색
SELECT * from employee
where age is null;

commit;


drop table employee;


