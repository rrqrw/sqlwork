--숫자 타입 내장 함수
-- 절대값 구하기: ABS()
--제공 테이블 : dual
select ABS(-10) from dual;


-- 반올림: round(숫자, 자리수) 
select round(127.67, 1) from dual; -- 소수 첫째 자리
select round(127.67, 0) from dual; -- 0의 자리  
select round(127.67, -1) from dual; --  일의 자리로 반올림 
select round(127.67, -2) from dual; --   십의 자리로 반올림

-- 버림 (내림) :trunc()
select trunc(127.67 , 1 ) from dual; -- 소수 첫째자리까지 표시(이후버림)
select trunc(127.67 , 0 ) from dual;
select trunc(127.67 , -1 ) from dual;
select trunc(127.67 , -2 ) from dual;

-- 버림(내림) :floor(숫자) -- 정수로 내림
select floor(127.67) from dual; -- 소수 첫째자리 까지 표시 
select floor(127.6 ) from dual;

-- 거듭제곱: power(밑,지수)
select power(2,3) from dual;

-- 문자 타입 
-- 소문자로 변경하기 : lower('ABCD')
-- 대문자로 변경하기 : upper('abcd')

select lower('ABCD') from dual;
select upper('abcd') from dual;

-- 문자열의 일부분을 추출 : substr(문자열, 인덱스 , 자리수)
-- 인덱스는 1번에서 시작 
select substr('abc', 1, 2) from dual;

-- 문자열을 찾아 바꾸기 : replace(문자열, 변경전문자, 변경후문자 )
select replace ('abcd','c','e') from dual;

-- 문자열의 길이 : length()
select length ('abcd') from dual;

-- 마스킹 : lpad(문자열, 길이, 특정문자)  - 왼쪽부터 특정문자로 채움
           -- rpad(문자열, 길이, 특정문자)  - 오른쪽부터 특정문자로 채움
select lpad ('today', 8 ,'*') from dual;
select rpad ('today', 8 ,'*') from dual;

-- 주문테이블
-- 고백별 평균 주문 금액을 반올림
select custid as 고객번호,
    sum(saleprice) as 합계금액,
    count(saleprice) as 주문건수,
    round (avg(saleprice), -2) as 평균주문금액
from orders
group by custid;

-- 도서테이블
-- 책제목의 글자수 
-- 책제목의 바이트수 : 한글-3byte , 영어, 특수문자- 1byte
SELECT bookname,
      length(bookname) as 글자수,
      lengthB(bookname) as 바이트수
from book;

--'축구'를 '농구' 로 변경하여 검색
select bookname ,
   replace(bookname,'축구','농구') as bookname
from book;

--고객테이블
-- 고객 이름별 같은성을 가진 고객의 인원수를 구하시오 
select substr(name, 1,1) 성,
        count(*) 인원
from customer
group by substr(name,1,1);
