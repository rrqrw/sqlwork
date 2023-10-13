--�ֹ� ���̺� ���� 
create table orders(
    orderid number primary key,
    custid  number not null,
    bookid  number not null,
    saleprice   number not null,
    orderdate   VARCHAR2(20) not null,
    foreign key(custid) REFERENCES customer(custid), -- �ܷ�Ű 
    FOREIGN key(bookid) REFERENCES book(bookid)     -- �ܷ�Ű 
    
);

-- �ֹ� ������ �߰� 
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(1,1,1,6000,'2018-07-01');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(2,1,3,21000,'2018-07-02');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(3,2,5,8000,'2018-07-03');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(4,3,6,6000,'2018-07-04');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(5,4,7,20000,'2018-07-05');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(6,1,2,12000,'2018-07-06');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(7,4,8,13000,'2018-07-07');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(8,3,10,12000,'2018-07-08');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(9,2,10,7000,'2018-07-09');
insert into orders(orderid, custid, bookid, saleprice, orderdate)
values(10,3,8,13000,'2018-07-10');
