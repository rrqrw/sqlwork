-- 뷰(vlew) 생성
-- update, delete 기능을 사용할 수 있음 
-- 주소에 '대한민국' 을 포함하는 고객들로 구성된 뷰를 만드시오
create view vw_customer
as select *from customer
where address like '대한민국%';

select *from vw_customer;
-- 이름이 겸연아를 신유빈으로 변경함
update vw_customer
 set name ='신유빈'
 where name ='김연아';
 -- 고객 아이디가 3인 고객을 삭제
 -- 참조하고 있는 oredr 테이블이 있어서 삭제 불가 
delete from vw_customer
 where custid =3;
 
 



--view  삭제 
drop view vw_customer;