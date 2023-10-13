-- �Խ��� ���̺� ����
create table boards(
    bno             number PRIMARY key,
    btitle          VARCHAR2(100) not null,
    bcontent        clob not null,
    bwriter          VARCHAR2(50)not null,
    bdate           date default sysdate,
    bfilename      VARCHAR2(50),
    bfiledata       blob    -- blob(binary large of byte)
);

-- ������ ����
create SEQUENCE seq_bno nocache;

--�Խñ� �߰�
insert into boards (bno,btitle, bcontent,bwriter)
VALUES(seq_bno.nextval, 'smartPhone' , '�Ｚ ������ s21�Դϴ�', 'today');

insert into boards (bno,btitle, bcontent,bwriter,bdate,bfilename,bfiledata)
VALUES(seq_bno.nextval, 'smartPhone' , '�Ｚ ������ s21�Դϴ�', 'today',
            sysdate,null,null);

select*from boards where bwriter = 'sky123'
 order by bno desc;
 select*from boards;

drop table  boards;