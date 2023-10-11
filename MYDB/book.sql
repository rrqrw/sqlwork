--bookmall����
--book���̺� ����
create table book(
    bookid        number primary key,
    bookname      varchar2(60) not null,
    publisher     varchar2(60) not null,
    price          number not null
);

--���� �ڷ� �߰� 
insert into book values (1, '�౸�� ����' , '�½�����', 7000);
insert into book values (2, '�౸�ƴ� ���� ' , '������', 13000);
insert into book values (3, '�౸�� ����' , '���ѹ̵��', 22000);
insert into book values (4, '���� ���̺�' , '���ѹ̵��', 35000);
insert into book values (5, '�ǰ� ����' , '�½�����', 8000);
insert into book values (6, '����� ��ü' , '�½�����', 6000);
insert into book values (7, '�߱��� �߾� ' , '�̻�̵��', 20000);
insert into book values (8, '�߱��� ��Ź��' , '�̻�̵��', 13000);
insert into book values (9, '�ø��� �̾߱�' , '�Ｚ��', 7500);
insert into book values (10, 'olympic champions' , 'person', 13000);

SELECT *FROM book;

--��� ������ ��ȣ�� �̸��� ������ �˻��Ͻÿ�
SELECT bookid, bookname, price FROM book;

--���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ� (�ߺ�����)
-- distinct�� �ߺ��� �����ִ� ��ɾ�
select DISTINCT publisher from book;

-������ 20000�� �̸��� ������ �˻��Ͻÿ�(�������� ����)
select*from book
where price <20000;
order by price;

--������ 10000�� �̻��̰� 20000�� ������ ������ �˻��Ͻÿ� 
-- between a and b
select*from book
where price between 10000 and 20000;
--'�౸�� ����' �� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�
select publisher from book
where bookname = '�౸�� ����';

select publisher from book
where bookname LIKE '�౸�� ����';
--�����̸��� '�౸' �� ���Ե� ���ǻ縦 �˻��Ͻÿ�
select bookname,publisher from book
where bookname LIKE '%�౸%';

--'�౸'�� ���� ������ ������ 20000�� �̻��� ������ �˻��Ͻÿ�
select * from book
where bookname LIKE '%�౸%'and andprice >20000;

--���� 
-- ������ �̸������� �����Ͻÿ� (��������)
select * from book
order by bookname;

--������ ���ݼ����� �˻��ϰ�(��������)
--������ ������ �̸��� ������������ �����Ͻÿ�
select * from book
order by price ASC, bookname desc;

 





commit;
