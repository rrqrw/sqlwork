-- ��¥ �ð� �Լ�
-- ���� ��¥ ���
select sysdate from dual;

-- ���� ��¥ ���ĺ�ȯ
select to_char(sysdate,'yyyy')�⵵,
       to_char(sysdate,'mm') ��,
       to_char(sysdate,'dd')��,
       to_char(sysdate,'yyyy-mm-dd')��¥
from dual;

-- ���� ��¥�� �ð�
select systimestamp from dual;

-- �ð� ���� ��ȯ
select to_char(sysdate,'hh:mi:ss')�ð����� ,
       to_char(sysdate,'yyyy-mm-dd hh:mi:ss')��¥�ͽð�
from dual;


-- ���� ���ϰ���
-- ���糯¥���� 10����, ���� ��¥ ���
select sysdate -10 from dual;
select sysdate +10 from dual;

-- Ư�� ��¥���� 10����, ���� ��¥ ���
-- to date(���ڿ�[��¥])
select to_date('2023-09-01') +10 from dual;

-- ���� ���ϰ���
-- add_months()
select add_months(sysdate,3) ��� from dual;
select add_months(sysdate,-3) ��� from dual;
select add_months(to_date('2023/5/1'),3) ��� from dual;


--������ ����ϱ� 
-- months_between(������, ������)
-- �Ѱ����� �ݿø� -round() ��� 
select 
round (months_between(to_date('2023-12-31'),to_date('2023-1-1')),0) �Ѱ�����
from dual;

-- orders ���̺��� ��¥ �ð��Լ� ��� �ϱ� 
-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�.
-- �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ� 
select orderid �ֹ���ȣ,
        orderdate �ֹ���,
       to_date(orderdate)+10 Ȯ����
from orders;
--�ֹ��Ͽ� 3���� ���ϰ� , ����
--�ֹ���ȣ�� 6������ 10���� ����Ͻÿ�
select orderid �ֹ���ȣ,
        orderdate �ֹ���,
        add_months(orderdate,3) ���ϱ���,
         add_months(orderdate,-3) ������
from orders
--where orderid >=6 and orderid<=10;
where orderid between 6 and 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ� 
select orderid �ֹ���ȣ,
        orderdate �ֹ���,
 trunc(months_between(sysdate,orderdate),0)�Ѱ�����
from orders 
where orderid=10;

-- ��ȯ �Լ� : to_number() : ���ڸ� ���ڷ� ��ȯ���� 
select to_number('320') from dual;