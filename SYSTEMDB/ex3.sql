-- ex3 ���̺� ����
CREATE TABLE ex3(
        col_null VARCHAR2(10),-- NULL ���
        col_not_null VARCHAR(10) NOT NULL -- NULL ����
);


INSERT INTO ex3 VALUES ('','hello'); 
INSERT INTO ex3 VALUES ('�ȳ�',''); --null ���� 

COMMIT;

SELECT * FROM ex3;