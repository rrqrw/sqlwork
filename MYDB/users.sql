--�ڹٿ� ������ ȸ�� ���̺� ����
create table users(
    userid      varchar2(20) primary key,
    username    varchar2(30) not null,
    userpassword varchar2(20) not null,
    userage       number(3) not null,
    useremail   varchar2(50) not null
  
    );
    
    --ȸ�� �߰�
    insert into users
    values ('today', '�����' , '12345' , 25 ,'today@korea.kr');
    
    SELECT* from users;
    
    
    SELECT* from users where userid = 'today';
       
    commit;
    drop table users;