--user 계정 : test , 비번 pwtest 
create user c##test IDENTIFIED by pwtest; 

-- session 권한 (로그인-인증) 부여 
grant CREATE SESSION to c##test;

-- db의 테이블 생성 권한 부여 
grant create table , resource to c##test;

-- 데이터 조작할 모든 권한 - dml (삽입, 조회 , 수정, 삭제 )
grant connect, DBA to c##test;
