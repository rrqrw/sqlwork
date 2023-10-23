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

-- ������ ����(nocache -���� ���� ���� , �ʱ�ȭ�Ǹ� 1���� ������)
create SEQUENCE seq_bno nocache;

--�Խñ� �߰�
insert into boards (bno,btitle, bcontent,bwriter)
VALUES(seq_bno.nextval, 'smartPhone' , '�Ｚ ������ s21�Դϴ�', 'today');

insert into boards (bno,btitle, bcontent,bwriter,bdate,bfilename,bfiledata)
VALUES(seq_bno.nextval, 'smartPhone' , '�Ｚ ������ s21�Դϴ�', 'today',
            sysdate,null,null);

select*from boards where bwriter = 'cloud'
 order by bno desc;
 
 select*from boards;
 -- �۹�ȣ 22���� ������ '������15' ���� ����
 update boards 
    set btitle = '������ 15',
    bcontent = '������ 15 ��ǰ�Դϴ�.'
 where bno = 22;
 
 --18�� �Խñ� ���� 
 delete from boards 
 where bno = 18;
 
 rollback;
 

