-- �� ���̺� ����
create table customer(
    custid   number primary key,
    name     varchar2(40) not null,
    address  varchar2(50),
    phone    varchar2(20)
);

--�� ����
insert into customer(custid, name,address, phone)
values(1,'������','���� ��ü����','000-5000-0001');
insert into customer(custid, name,address, phone)
values(2,'�迬��','���ѹα� ����','000-6000-0001');
insert into customer(custid, name,address, phone)
values(3,'�Ȼ�','���ѹα� ���ֱ�����','000-7000-0001');
insert into customer(custid, name,address, phone)
values(4,'������','�̱� �����','');
insert into customer(custid, name,address, phone)
values(5,'�����','���� ��Ʈ��','000-8000-0001');