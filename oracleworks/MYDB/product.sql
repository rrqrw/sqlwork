-- product 테이블 생성
create table product(
    product_code   char(6) primary key, -- 상품코드
    product_name   varchar2(50) not null, -- 상품명
    price          number not null        --가격 
);


insert into product(product_code, product_name, price)
values('100001','무소음 무선 마우스', 25000);
insert into product(product_code, product_name, price)
values('100002','기계식 게이밍 키보드', 30000);
insert into product(product_code, product_name, price)
values('100003','무결점 패널 광시야각 모니터', 120000);

select *from product;

commit;

-- 상품의 총 개수 및 상품 가격의 평균을 구하시오를 구하시오
-- count(), avg(), sum()
SELECT count(*)상품의총개수 ,
        round (avg(price),-2)평균가격
from product;


-- 상품 중에서 마우스 검색하기 
select * from product
where  product_name Like '%마우스%';

-- 상품을 가격순으로 정리하시오 (내림차순)
select * from product
order by price desc;

select * from product;
select * from product_review;
-- 스칼라 서브쿼리 : select 절에 잇는 select문을 말함 
-- 상품 리뷰 테이블에 있는 상품 이름 검색 
select a.product_code, 
       (select b.product_name
        from product b 
        where a.product_code = b.product_code)product_name,
        a.member_id, 
        a.content;
        from  product_review a;
-- 다중형 서브쿼리
-- 도서를 구매한 적이 없는 고객의 이름 출력
select name 
from customer
where custid not in (select custid from orders);
-- 다중형 서브쿼리
-- 도서를 구매한 적이 있는고객의 이름 출력
select name 
from customer
where custid ]in (select custid from orders);



