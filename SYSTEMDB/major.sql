--�б� �����ͺ��̽� ����
-- �а� ���̺� ����
create table major(
    mname   varchar2(20) primary key,
    mphone  varchar2(20) not null, --�ʼ� �Է� 
    location varchar2(30) not null
);

--�а� �߰� 
insert into major(mname,mphone,location)
values ('����Ʈ�����а�','02-1234-5678', 'B�� 3��');
insert into major(mname,mphone,location)
values ('ȭ�а��а�','02-2222-7777', 'B�� 4��');
insert into major(mname,mphone,location)
values ('�������ڰ��а�','02-4444-7777', 'B�� 5��');

--�а��� �ڷ��� ũ�⺯��
alter table major  modify mname varchar2(30);
--��ü ������ ��ȸ
select * from major;
-- �а���� ��ȭ��ȣ�� ��� (��Ī as)
select mname as �а���, mphone as ��ȭ��ȣ from major;

commit;

