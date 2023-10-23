-- ���� ����
--product , product_review
select * from product;
select * from product_review;

--���䰡 �մ� ��ǰ�� ������ �˻��Ͻÿ� 
--���� ���̺� product_name Į���� ���
select b.review_no,
        b.product_code,
        a.product_name,
        b.content,
        b.regdate
from product a, product_review b
where a.product_code = b.product_code;

select b.*,
        a.product_name
       
from product a, product_review b
where a.product_code = b.product_code;

-- ansi(�̱���ȸ) ���� - standard join(ǥ������)
-- ��������(inner join ~on)
select b.review_no,
        b.product_code,
        a.product_name,
        b.content,
        b.regdate
from product a join product_review b
on a.product_code = b.product_code;

-- �ܺ�����(left outer, right ����)

select a.product_name,
        b.review_no,
        b.product_code,
        b.content,
        b.regdate
from product a left join product_review b
on a.product_code = b.product_code;

-- �ܺ�����(left outer, right ����)
--���䰡 ������ �������  ��� ��ǰ�� ������ �˻� 
select a.product_name,
        b.review_no,
        b.product_code,
        b.content,
        b.regdate
from product a left join product_review b
on a.product_code = b.product_code;
--���䰡 ���� ��ǰ�� ������ �˻��Ͻÿ� 
select a.product_name"��ǰ�ıⰡ ���� ��ǰ" 
from product a left join product_review b
on a.product_code = b.product_code
where b.content is null;

-- ��ǰ�������̺� product_name Į�� �߰�
-- ��Į�� ��������: �� Į���� ��ȯ��, select ������ ���
select  A.review_no,
        A.product_code,
        (select B.product_name 
        from product B 
        where A.product_code = B.product_code)
        product_name,
        A.content,
        A.member_id
from product_review A;



