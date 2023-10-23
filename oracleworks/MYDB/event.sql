-- event 테이블 생성
create table event(
    event_no    number primary key,         -- 이벤트번호
    event_name  varchar2(50) not null,      -- 이벤트 이름
    start_date  varchar2(20) not null,      -- 시작일
    end_date    varchar2(20) not null       -- 종료일
);


create sequence seq_eno  nocache;