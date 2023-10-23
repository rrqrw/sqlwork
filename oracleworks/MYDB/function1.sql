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

-- ���� Ÿ�� 
-- �ҹ��ڷ� �����ϱ� : lower('ABCD')
-- �빮�ڷ� �����ϱ� : upper('abcd')

select lower('ABCD') from dual;
select upper('abcd') from dual;

-- ���ڿ��� �Ϻκ��� ���� : substr(���ڿ�, �ε��� , �ڸ���)
-- �ε����� 1������ ���� 
select substr('abc', 1, 2) from dual;

-- ���ڿ��� ã�� �ٲٱ� : replace(���ڿ�, ����������, �����Ĺ��� )
select replace ('abcd','c','e') from dual;

-- ���ڿ��� ���� : length()
select length ('abcd') from dual;

-- ����ŷ : lpad(���ڿ�, ����, Ư������)  - ���ʺ��� Ư�����ڷ� ä��
           -- rpad(���ڿ�, ����, Ư������)  - �����ʺ��� Ư�����ڷ� ä��
select lpad ('today', 8 ,'*') from dual;
select rpad ('today', 8 ,'*') from dual;

-- �ֹ����̺�
-- ��麰 ��� �ֹ� �ݾ��� �ݿø�
select custid as ����ȣ,
    sum(saleprice) as �հ�ݾ�,
    count(saleprice) as �ֹ��Ǽ�,
    round (avg(saleprice), -2) as ����ֹ��ݾ�
from orders
group by custid;

-- �������̺�
-- å������ ���ڼ� 
-- å������ ����Ʈ�� : �ѱ�-3byte , ����, Ư������- 1byte
SELECT bookname,
      length(bookname) as ���ڼ�,
      lengthB(bookname) as ����Ʈ��
from book;

--'�౸'�� '��' �� �����Ͽ� �˻�
select bookname ,
   replace(bookname,'�౸','��') as bookname
from book;

--�����̺�
-- �� �̸��� �������� ���� ���� �ο����� ���Ͻÿ� 
select substr(name, 1,1) ��,
        count(*) �ο�
from customer
group by substr(name,1,1);
