-- �����б� ������ , ������̺�
select * from summer_price;
select * from summer_register;

-- �л��� ��� ���������� �˻��Ͻÿ� 
select b.sid,
       b.subject,
      a.price
from summer_price a, summer_register b
where  a.subject = b.subject;
-- �л��� ��� ���������� �˻��Ͻÿ� 
-- �������� join ~ on
select b.sid,
       b.subject,
      a.price
from summer_price a join summer_register b
on a.subject = b.subject;


-- �л��� ��� ���������� �˻��Ͻÿ� 
-- �������� join~ using ����Į���̸��� ������츸 ��밡��
select b.sid,
       subject,
      a.price
from summer_price a join summer_register b
using (subject);

--���� ������ �հ踦 ���Ͻÿ�
select b.subject,
      sum(a.price)
from summer_price a, summer_register b
where  a.subject = b.subject
group by b.subject;



insert into summer_register values(301,'Python');
insert into summer_price values('Python', 40000);
--���� ������ �հ�  �� ��ü �Ѱ踦 ���Ͻÿ�
--rollup() , cube()
--NVL(����, '�Ѱ�')
--������ NULL�� �ƴϸ� �������, null �̸� '�Ѱ�'�� ���
select NVL (b.subject, '�Ѱ�') ��������,
      sum(a.price) �������հ�
from summer_price a, summer_register b
where  a.subject = b.subject
group by rollup (b.subject);
