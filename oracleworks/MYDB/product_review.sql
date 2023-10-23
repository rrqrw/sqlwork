-- product_ review 테이블 생성
-- clob(character large object) - 매우 큰 문자열 자료형(4GB)
create table product_review(
    review_no       number primary key,      -- 리뷰번호
    product_code    char(6) not null,   -- 상품코드
    member_id       varchar2(20) not null,   -- 회원아이디
    content         clob not null,           -- 리뷰내용
    regdate         date default sysdate,    -- 작성일
    foreign key(product_code) REFERENCES product(product_code) -- 외래키 
);
-- 자동순번(nocache -초기화하면 1부터 시작 ) 
create sequence seq_rno nocache;

insert into product_review(review_no,product_code,member_id,content)
values(seq_rno.nextval,'100001','today10','무소음인데 소음이 조금 있는듯...');
insert into product_review(review_no,product_code,member_id,content)
values(seq_rno.nextval,'100001','cloud10','무선이라 정말 편하네요!');
insert into product_review(review_no,product_code,member_id,content)
values(seq_rno.nextval,'100002','skt123','게임할 맛 납니다');

select*from product_review;
commit;
--시퀀스 삭제
drop sequence seq_rno;
-- 테이블 유지하고 데이터 전체 삭제
truncate table product_review;

-- 상품코드'100001'이고, 회원아이디가'cloud10'인
--상품의 정보를 출력하오
select*from product_review
where product_code='100001'
    and  member_id ='cloud10' ;
    
    
-- 상품 아이템 -3개 , 리뷰있는 아이템 - 2개 
-- 리뷰가 있는 상품을 검색하시오 (동등 조인)
-- a테이블의 기본키 = b테이블의 외래키
select * 
from product a, product_review b
where a.product_code = b.product_code;


-- 표준 방식 - 내부조인(inner join )
select *
from product a join product b
    on a.product_code = b.product_code;
    
-- 리뷰의 유무에 관계없이 상품의 정보를 검색하시오 
-- 동등조인 방식( product의 상품은 모두 출력되고, 리뷰는 있는 없든 관계없음 리뷰가 없으면 null로 출력됨) 
select * 
from product a, product_review b
where a.product_code = b.product_code(+);

-- 표준방식 (외부조인 - outer join)
-- outer  생략 가능 
select *
from product_review a right join product b
    on a.product_code = b.product_code;
    
    
select  b.product_code,
        b.product_name,
        b.price,
        a.member_id,
        a.content,
        a.regdate
        
from product_review a right join product b
    on a.product_code = b.product_code;
    
    