--���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ�: ABS()
--���� ���̺� : dual
select ABS(-10) from dual;


-- �ݿø�: round(����, �ڸ���) 
select round(127.67, 1) from dual; -- �Ҽ� ù° �ڸ�
select round(127.67, 0) from dual; -- 0�� �ڸ�  
select round(127.67, -1) from dual; --  ���� �ڸ��� �ݿø� 
select round(127.67, -2) from dual; --   ���� �ڸ��� �ݿø�

-- ���� (����) :trunc()
select trunc(127.67 , 1 ) from dual; -- �Ҽ� ù°�ڸ����� ǥ��(���Ĺ���)
select trunc(127.67 , 0 ) from dual;
select trunc(127.67 , -1 ) from dual;
select trunc(127.67 , -2 ) from dual;

-- ����(����) :floor(����) -- ������ ����
select floor(127.67) from dual; -- �Ҽ� ù°�ڸ� ���� ǥ�� 
select floor(127.6 ) from dual;

-- �ŵ�����: power(��,����)
select power(2,3) from dual;