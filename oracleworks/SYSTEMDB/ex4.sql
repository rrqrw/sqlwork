-- ex4���̺� ����
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY , --�⺻Ű ��������
    passwd VARCHAR2(10) NOT NULL
);


INSERT INTO ex4 VALUES ('sky2003' ,'u1234');
INSERT INTO ex4 VALUES ('sky2003' ,'u54321'); --���Ἲ ���� ���� ���� (���� �Ұ�)
INSERT INTO ex4 VALUES ('today123' , 'u2345' , 25);
INSERT INTO ex4(id, passwd) VALUES ('today321','u23456');
-- �ڷ����� ũ�⺸�� ū ������ �Է� �Ұ� 
INSERT INTO ex4(id, passwd,age) VALUES ('today3210','u2345678910',23);
COMMIT;


-- ����(age) Į�� �߰� 
ALTER TABLE ex4 ADD age NUMBER(3);

--�ڷ����� ũ�� ����(varchar2 10-> 12)
ALTER TABLE ex4 MODIFY passwd VARCHAR2(12);


SELECT * FROM ex4;