-- ���� ���� ���̺� ����
CREATE table account(
    ano        varchar2(20) primary key,
    owner       varchar2(20) not null,
    balance      number not null
);

insert into account values('11-11-111','������',10000);

--�ڷ� ����(��, ���)
update account
set balance = 50000,
    owner = '�ڴ��'
where ano = '44-44-444';

DELETE from account
where ano = '22-22-222';


rollback;
commit;

select *from account;
