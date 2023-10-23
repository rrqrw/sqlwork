-- product ���̺� ����
create table product(
    product_code   char(6) primary key, -- ��ǰ�ڵ�
    product_name   varchar2(50) not null, -- ��ǰ��
    price          number not null        --���� 
);


insert into product(product_code, product_name, price)
values('100001','������ ���� ���콺', 25000);
insert into product(product_code, product_name, price)
values('100002','���� ���̹� Ű����', 30000);
insert into product(product_code, product_name, price)
values('100003','������ �г� ���þ߰� �����', 120000);

select *from product;

commit;

-- ��ǰ�� �� ���� �� ��ǰ ������ ����� ���Ͻÿ��� ���Ͻÿ�
-- count(), avg(), sum()
SELECT count(*)��ǰ���Ѱ��� ,
        round (avg(price),-2)��հ���
from product;


-- ��ǰ �߿��� ���콺 �˻��ϱ� 
select * from product
where  product_name Like '%���콺%';

-- ��ǰ�� ���ݼ����� �����Ͻÿ� (��������)
select * from product
order by price desc;

select * from product;
select * from product_review;
-- ��Į�� �������� : select ���� �մ� select���� ���� 
-- ��ǰ ���� ���̺� �ִ� ��ǰ �̸� �˻� 
select a.product_code, 
       (select b.product_name
        from product b 
        where a.product_code = b.product_code)product_name,
        a.member_id, 
        a.content;
        from  product_review a;
-- ������ ��������
-- ������ ������ ���� ���� ���� �̸� ���
select name 
from customer
where custid not in (select custid from orders);
-- ������ ��������
-- ������ ������ ���� �ִ°��� �̸� ���
select name 
from customer
where custid ]in (select custid from orders);



