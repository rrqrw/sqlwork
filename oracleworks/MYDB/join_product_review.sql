-- 조인 연습
--product , product_review
select * from product;
select * from product_review;

--리뷰가 잇는 상품의 정보를 검색하시오 
--리뷰 테이블에 product_name 칼럼을 출력
select b.review_no,
        b.product_code,
        a.product_name,
        b.content,
        b.regdate
from product a, product_review b
where a.product_code = b.product_code;

select b.*,
        a.product_name
       
from product a, product_review b
where a.product_code = b.product_code;

-- ansi(미국협회) 조인 - standard join(표준조인)
-- 내부조인(inner join ~on)
select b.review_no,
        b.product_code,
        a.product_name,
        b.content,
        b.regdate
from product a join product_review b
on a.product_code = b.product_code;

-- 외부조인(left outer, right 조인)

select a.product_name,
        b.review_no,
        b.product_code,
        b.content,
        b.regdate
from product a left join product_review b
on a.product_code = b.product_code;

-- 외부조인(left outer, right 조인)
--리뷰가 유무와 상관없이  모든 상품의 정보를 검색 
select a.product_name,
        b.review_no,
        b.product_code,
        b.content,
        b.regdate
from product a left join product_review b
on a.product_code = b.product_code;
--리뷰가 없는 상품의 정보를 검색하시오 
select a.product_name"상품후기가 없는 상품" 
from product a left join product_review b
on a.product_code = b.product_code
where b.content is null;

-- 상품리뷰테이블에 product_name 칼럼 추가
-- 스칼라 서브쿼리: 한 칼럼만 반환함, select 절에서 사용
select  A.review_no,
        A.product_code,
        (select B.product_name 
        from product B 
        where A.product_code = B.product_code)
        product_name,
        A.content,
        A.member_id
from product_review A;



