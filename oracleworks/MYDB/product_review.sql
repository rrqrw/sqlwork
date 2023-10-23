-- product_ review ���̺� ����
-- clob(character large object) - �ſ� ū ���ڿ� �ڷ���(4GB)
create table product_review(
    review_no       number primary key,      -- �����ȣ
    product_code    char(6) not null,   -- ��ǰ�ڵ�
    member_id       varchar2(20) not null,   -- ȸ�����̵�
    content         clob not null,           -- ���䳻��
    regdate         date default sysdate,    -- �ۼ���
    foreign key(product_code) REFERENCES product(product_code) -- �ܷ�Ű 
);
-- �ڵ�����(nocache -�ʱ�ȭ�ϸ� 1���� ���� ) 
create sequence seq_rno nocache;

insert into product_review(review_no,product_code,member_id,content)
values(seq_rno.nextval,'100001','today10','�������ε� ������ ���� �ִµ�...');
insert into product_review(review_no,product_code,member_id,content)
values(seq_rno.nextval,'100001','cloud10','�����̶� ���� ���ϳ׿�!');
insert into product_review(review_no,product_code,member_id,content)
values(seq_rno.nextval,'100002','skt123','������ �� ���ϴ�');

select*from product_review;
commit;
--������ ����
drop sequence seq_rno;
-- ���̺� �����ϰ� ������ ��ü ����
truncate table product_review;

-- ��ǰ�ڵ�'100001'�̰�, ȸ�����̵�'cloud10'��
--��ǰ�� ������ ����Ͽ�
select*from product_review
where product_code='100001'
    and  member_id ='cloud10' ;
    
    
-- ��ǰ ������ -3�� , �����ִ� ������ - 2�� 
-- ���䰡 �ִ� ��ǰ�� �˻��Ͻÿ� (���� ����)
-- a���̺��� �⺻Ű = b���̺��� �ܷ�Ű
select * 
from product a, product_review b
where a.product_code = b.product_code;


-- ǥ�� ��� - ��������(inner join )
select *
from product a join product b
    on a.product_code = b.product_code;
    
-- ������ ������ ������� ��ǰ�� ������ �˻��Ͻÿ� 
-- �������� ���( product�� ��ǰ�� ��� ��µǰ�, ����� �ִ� ���� ������� ���䰡 ������ null�� ��µ�) 
select * 
from product a, product_review b
where a.product_code = b.product_code(+);

-- ǥ�ع�� (�ܺ����� - outer join)
-- outer  ���� ���� 
select *
from product_review a right join product b
    on a.product_code = b.product_code;
    
    
select  b.product_code,
        b.product_name,
        b.price,
        a.member_id,
        a.content,
        a.regdate
        
from product_review a right join product b
    on a.product_code = b.product_code;
    
    