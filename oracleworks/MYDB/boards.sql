-- 게시판 테이블 생성
create table boards(
    bno             number PRIMARY key,
    btitle          VARCHAR2(100) not null,
    bcontent        clob not null,
    bwriter          VARCHAR2(50)not null,
    bdate           date default sysdate,
    bfilename      VARCHAR2(50),
    bfiledata       blob    -- blob(binary large of byte)
);

-- 시퀀스 생성(nocache -저장 하지 않음 , 초기화되면 1부터 시작함)
create SEQUENCE seq_bno nocache;

--게시글 추가
insert into boards (bno,btitle, bcontent,bwriter)
VALUES(seq_bno.nextval, 'smartPhone' , '삼성 갤럭시 s21입니다', 'today');

insert into boards (bno,btitle, bcontent,bwriter,bdate,bfilename,bfiledata)
VALUES(seq_bno.nextval, 'smartPhone' , '삼성 갤럭시 s21입니다', 'today',
            sysdate,null,null);

select*from boards where bwriter = 'cloud'
 order by bno desc;
 
 select*from boards;
 -- 글번호 22번의 제목을 '아이폰15' 으로 변경
 update boards 
    set btitle = '아이폰 15',
    bcontent = '아이폰 15 제품입니다.'
 where bno = 22;
 
 --18번 게시글 삭제 
 delete from boards 
 where bno = 18;
 
 rollback;
 

