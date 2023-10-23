-- 은행 계좌 테이블 생성
CREATE table account(
    ano        varchar2(20) primary key,
    owner       varchar2(20) not null,
    balance      number not null
);

insert into account values('11-11-111','장유빈',10000);

--자료 변결(입, 출금)
update account
set balance = 50000,
    owner = '박대박'
where ano = '44-44-444';

DELETE from account
where ano = '22-22-222';


rollback;
commit;

select *from account;
