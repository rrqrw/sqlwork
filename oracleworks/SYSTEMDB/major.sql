--학교 데이터베이스 구축
-- 학과 테이블 생성
create table major(
    mname   varchar2(20) primary key,
    mphone  varchar2(20) not null, --필수 입력 
    location varchar2(30) not null
);

--학과 추가 
insert into major(mname,mphone,location)
values ('소프트웨어학과','02-1234-5678', 'B동 3층');
insert into major(mname,mphone,location)
values ('화학공학과','02-2222-7777', 'B동 4층');
insert into major(mname,mphone,location)
values ('전기전자공학과','02-4444-7777', 'B동 5층');

--학과명 자료의 크기변경
alter table major  modify mname varchar2(30);
--전체 데이터 조회
select * from major;
-- 학과명과 전화번호만 출력 (별칭 as)
select mname as 학과명, mphone as 전화번호 from major;

commit;

