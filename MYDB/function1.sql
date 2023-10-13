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