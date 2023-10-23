--test 테이블 생성
create table test(
    action varchar2(1000) 
);

insert into test values('계정 생성 및 권한부여를 수행합니다.');

drop table test;
