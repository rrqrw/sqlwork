--user ���� : test , ��� pwtest 
create user c##test IDENTIFIED by pwtest; 

-- session ���� (�α���-����) �ο� 
grant CREATE SESSION to c##test;

-- db�� ���̺� ���� ���� �ο� 
grant create table , resource to c##test;

-- ������ ������ ��� ���� - dml (����, ��ȸ , ����, ���� )
grant connect, DBA to c##test;
