
use mydb;
-- news 테이블 생성

create table news(
	aid int primary key auto_increment,
    title    varchar(100) not null,
	content		text not null,
    create_date  timestamp default now(),
    img      varchar(40)
);

insert into news(title, content, img) -- auto_increment: 일련번호 ,시퀀스
values('경제 뉴스','휘발유값이 너무 올랐습니다','car.jpg');
insert into news(title, content, img)
values('정치 뉴스','이스라엘과 팔레스타인 전쟁','war.jpg');
insert into news(title, content, img)
values('스포츠 뉴스','한국과 베트남 축구 성적- 6:0','soccer.jpg');

select * from news;

-- 등록시간 순으로 정렬하시오(최근 등록일이  위로 올라감) 
select * from news
order by create_date desc;

-- 뉴스 내용중에 '이스라엘' 이포함된 뉴스를 검색
select * from news
where content like  '%이스라엘%';

-- 뉴스 기사의 총개수
select count(*)"기사 수" from news;
