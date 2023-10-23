-- �ڹ� �Խ��� ������ board ���̺� ����
create table board(
    bno             number PRIMARY key,
    btitle          VARCHAR2(100) not null,
    bcontent        clob not null,
    bwriter          VARCHAR2(50)not null,
    bdate           date default sysdate
);

create SEQUENCE seq nocache;

insert into board(bno, btitle, bcontent, bwriter)
values (seq.nextval, '���� �λ�', '�ȳ��ϼ���~ ������ �ݰ����ϴ�.', 'today10');
insert into board(bno, btitle, bcontent, bwriter)
values (seq.nextval, '���� ����', 'õ�� ������ û���մϴ�.', 'admin0000');
select * from board
order by bno desc;

Drop sequence seq;
truncate table board;

commit;