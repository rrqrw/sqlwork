--bookmall구축
--book테이블 생성
create table book(
    bookid        number primary key,
    bookname      varchar2(60) not null,
    publisher     varchar2(60) not null,
    price          number not null
);

--도서 자료 추가 
insert into book values (1, '축구의 역사' , '굿스포츠', 7000);
insert into book values (2, '축구아는 여자 ' , '나무수', 13000);
insert into book values (3, '축구의 이해' , '대한미디어', 22000);
insert into book values (4, '골프 바이블' , '대한미디어', 35000);
insert into book values (5, '피겨 교본' , '굿스포츠', 8000);
insert into book values (6, '양궁의 실체' , '굿스포츠', 6000);
insert into book values (7, '야구의 추억 ' , '이상미디어', 20000);
insert into book values (8, '야구를 부탁해' , '이상미디어', 13000);
insert into book values (9, '올림픽 이야기' , '삼성당', 7500);
insert into book values (10, 'olympic champions' , 'person', 13000);

SELECT *FROM book;

--모든 도서의 번호와 이름과 가격을 검색하시오
SELECT bookid, bookname, price FROM book;

--도서 테이블에 있는 모든 출판사를 검색하시오 (중복제거)
-- distinct는 중복이 없애주는 명령어
select DISTINCT publisher from book;

-- 출판사 '굿스포츠' 또는 '대한미디어'인 도서를 검색하시오
select *from book
where publisher ='굿스포츠'or  publisher='대한미디어';

-- 출판사 '굿스포츠' 또는 '대한미디어'인 도서를 검색하시오
--in() 함수 사용 
select *from book
where publisher in('굿스포츠','대한미디어');

-- 출판사 '굿스포츠' 또는 '대한미디어'인 도서를제외하고 검색하시오
-- not in() 함수 사용 
select *from book
where publisher not in('굿스포츠','대한미디어');

--가격이 20000원 미만인 도서를 검색하시오(오름차순 정렬)
select*from book
where price <20000
order by price;

--가격이 13000원 도서를 검색하시오
select*from book
where price =13000;
--가격이 13000원이 아닌 도서를 검색하시오
select*from book
where price <>13000;

select*from book
where price !=13000;

--가격이 10000원 이상이고 20000원 이하인 도서를 검색하시오 
-- between a and b
select*from book
where price between 10000 and 20000;
--'축구의 역사' 를 출간한 출판사를 검새하시오
select publisher from book
where bookname = '축구의 역사';

select publisher from book
where bookname LIKE '축구의 역사';
--도서이름에 '축구' 가 포함된 출판사를 검색하시오
select bookname,publisher from book
where bookname LIKE '%축구%';
--도서이름에 '축구' 가 포함되지 않은 출판사를 검색하시오
select bookname,publisher from book
where bookname not LIKE '%축구%';

--'축구'에 관한 도서중 가격이 20000원 이상인 도서를 검색하시오
select * from book
where bookname LIKE '%축구%'and andprice >20000;

--정렬 
-- 도서를 이름순으로 정렬하시오 (오름차순)
select * from book
order by bookname;

--도서를 가격순으로 검색하고(오름차순)
--가격이 같으면 이름을 내림차순으로 정렬하시오
select * from book
order by price ASC, bookname desc;

 





commit;
