-- rownum(로우번호,행번호)
-- 행 수를 제한하고 싶을 때 사용 sudo columne 이라함
create table ex_score(
    name varchar2(20),
    score number(3)
);

insert into ex_score values('김하나',94);
insert into ex_score values('고하나',94);
insert into ex_score values('이하나',100);
insert into ex_score values('박하나',97);
insert into ex_score values('정하나',87);
insert into ex_score values('최하나',87);
insert into ex_score values('윤하나',91);
insert into ex_score values('임하나',77);
insert into ex_score values('장하나',80);
insert into ex_score values('함하나',95);

select * from ex_score;
--1부터 5행까지 정보 출력
select rownum,name, score
from ex_score 
where rownum >=1 and rownum <= 5;

select rownum,name, score
from ex_score 
where rownum BETWEEN 1 and 5;
--2부터 6행 까지 데이터 검색
--rownum 은 1부터만 실행해야함
select rownum,name, score
from ex_score 
where rownum>=2 and rownum <= 6;

-- 점수를 높은순으로 정렬하여 검색하시오
select * 
from ex_score 
order by score Desc;

--점수가 높은 순으로 5명을 검색하시오 
select rownum,name, score
from ex_score 
where  rownum <=5
order by score Desc;

-- 성적을 내림차순으로 정렬한 후 5개
/*
  실행 순서
  1.from절 테이블명
  2.where, group by
  3.select 절
  4.order 절
 */
select rownum,name, score
from  (select rownum,name, score from ex_score order by score Desc)
where  rownum <=5;

-- 성적순위 
select name, score ,rank() over(order by score Desc)성적순위,
   dense_rank() over(order by score Desc)성적순위2

from ex_score;



