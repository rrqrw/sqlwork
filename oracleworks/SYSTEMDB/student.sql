-- 학생 테이블 생성
create table student(
    snumber  number primary key,
    sname   varchar2(20) not null,
    age     number(2)  not null,
    gender  varchar2(6) not null,
    address varchar2(50),
    mname   varchar2(30) not null,
    foreign key(mname) references major(mname) --외래키

);
-- 학생 추가 
insert into student(snumber,sname,age,gender,address,mname)
values (1001, '이강' , 22 , '여자' , '서울시 강서구', '소프트웨어학과');
insert into student(snumber,sname,age,gender,address,mname)
values (1002, '박대양' , 34 , '남자' , '인천시 남구', '전기전자공학과');
insert into student(snumber,sname,age,gender,address,mname)
values (1003, '우영우' , 31 , '여자' , '', '전기전자공학과');
--부모키에 없는 데이터는 삽입 이상발생 
insert into student(snumber,sname,age,gender,address,mname)
values (1003, '김산' , 29 , '남자' , '서울시 동대문구', '회계학과');


--전체 학생조회
select* from student;

-- 이름이 이강인 학생의 학번과 이름과 나이를 조회하기 
select snumber,sname,age from student where sname='이강';

--이름에 '우'가 포함된 학생의 모든 정보를 출력하시오 
select* from student
where sname Like '%우%';

-- 나이가 30세 이상이고 성별이 남자인 학새의 모든 정보를 출력
select* from student
where age >=30 and gender ='남자';
--주소가 없는 학생의 정보를 출력하시오 
select* from student
where address is null;
-- 주소가 없는 학생 삭제하기 (null)
delete from student 
where address is null;
-- 주소가 없는 학생 삭제하기(공백문자)
delete from student 
where address = ' ';
-- 주소가 null인 데이터에 '수원시 영통구' 로 입력
update student set address  = '수원시 영통구'
where address is null;
-- 트랜잭션(롤백은 커밋하기전에 실행하면 취소, 복원이됨)
rollback;

-- 정렬하기 (오름차순-ASC , 내림차순-DESC)
-- 학생의 나이가 적은 순으로 정렬하여 출력하시오 
select*from student
order by age;

-- 학과명이 '전기전자공학과'학생중에서 나이가 많은 순으로 정렬하여 출력하시오 
select*from student
where mname = '전기전자공학과'
order by age DESC;


commit;
DROP TABLE student;