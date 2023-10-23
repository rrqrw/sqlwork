-- 자바 게시판 구현할 board 테이블 생성
create table board(
    bno             number PRIMARY key,
    btitle          VARCHAR2(100) not null,
    bcontent        clob not null,
    bwriter          VARCHAR2(50)not null,
    bdate           date default sysdate
);

create SEQUENCE seq nocache;

insert into board(bno, btitle, bcontent, bwriter)
values (seq.nextval, '가입 인사', '안녕하세요~ 만나서 반갑습니다.', 'today10');
insert into board(bno, btitle, bcontent, bwriter)
values (seq.nextval, '공지 사항', '천장 에어컨 청소합니다.', 'admin0000');
select * from board
order by bno desc;

Drop sequence seq;
truncate table board;

commit;