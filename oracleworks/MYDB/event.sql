-- event ���̺� ����
create table event(
    event_no    number primary key,         -- �̺�Ʈ��ȣ
    event_name  varchar2(50) not null,      -- �̺�Ʈ �̸�
    start_date  varchar2(20) not null,      -- ������
    end_date    varchar2(20) not null       -- ������
);


create sequence seq_eno  nocache;