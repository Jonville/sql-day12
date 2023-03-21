select bookname, publisher, price from book where bookname like '축구의 역사';

select phone from customer where name='김연아';

select bookname, price from book;

select * from book;

select price, bookname from book;

select bookid , bookname, publisher, price from book;

select publisher from book;

select distinct publisher from book;        --distinct는 중복제거

select * from book where price < '20000';

select * from book where price between 10000 and 20000;

select * from book where price >= 10000 and price <=20000;

select * from book where publisher in('굿스포츠', '대한미디어');

select * from book where publisher not in('굿스포츠', '대한미디어');

select bookname, publisher from book where bookname like '축구의 역사';

select bookname, publisher from book where bookname like'%축구%';

select * from book where bookname like'_구%';

select * from book order by bookname;

select * from book order by price , bookname;

select * from book order by price desc , publisher asc;

select  sum(saleprice) from orders;


-- 주석처리 ~~   -- 요거 붙혀주면됨~----

select * from book where price != 13000;    -- != 이것도 쓸수있음ㅎ

select * from book where price in('7000', '22000','13000'); -- in( 찾고싶은 친구들 검색)

select * from book where price not in('7000', '22000','13000'); -- not in( 찾고싶지 않은 친구들 검색) 

select * from customer;

select * from customer where phone is null; -- null 인 친구들만 검색

select * from customer where phone is not null; -- null 인 친구만 빼고 검색

select * from book where bookname like '%축구%';   -- % 는 앞에 어떤값이 오든 뒤에 어떤값이 오든 축구가 포함된걸 검색

select * from book order by price  ;   -- order by는 정렬해주는 명령어

select * from book order by price DESC  ;   -- asc 는 오름차순 desc 는 내림차순

select * from book order by price asc , bookname desc ; -- price 는 오름차순 / bookname 은 내림차순

select * from book order by publisher , bookname desc ;

select publisher, bookname from book order by publisher , bookname desc ;

---------------------------------------------------------------------------------------

select * from book where price >= 20000;

select * from book  where bookname like ('%야구%');

select * from book where publisher='굿스포츠' order by price desc;

select * from book where price >= 5000 and price <= 20000;
-- select * from book where price between 5000 and 20000;   위랑 같은 의미

select * from customer where phone is not null and custid >= 3;

select sum(price) from book;        -- sum() 함수를 이용하여 price의 전체 값을 더해준다.

select sum(price) as test from book;        -- as 는 그 컬럼의 별칭을 붙혀주는거임

select max(price) from book;        -- max() 는 최대값 검색해주는거

select count(*) from book;  -- count() 전체 레코드의 수! /  -- 보통 조건식 이 붙는다
                       
select count(*) from book where price > 15000;

select avg(price) as avg from book;        -- avg() 평균값 구해줌

---------------------------------------------------------------------------------------

select publisher as 출판사 , avg(price) as 평균, count(*) as 개수, max(price) from book group by publisher ;       -- group by 는 그 Column의 그룹들을 묶어준다. 그리고 평균을 구해준다.

---------------------------------------------------------------------------------------

delete from orders where saleprice < 10000;     -- 삭제 ! (1만원 미만)
commit;     --- commit 써버리면 복구가 완전 불가능하다.
            --  이걸 해줘야 완벽하게 삭제가 가능하다.
            
---------------------------------------------------------------------------------------

update book
set bookname = '축구의 역사' 
    , price = 7000
where bookid = 1;       -- 이름값을 수정할때 update ~ set 를 사용한다.   
                        -- 수정할때 primary key 값으로 설정해준다.

select * from book;

---------------------------------------------------------------------------------------

CREATE TABLE student (
  stu_no char(9)PRIMARY KEY,
  stu_name varchar(12),
  stu_dept varchar(20),
  stu_grade NUMBER ,
  stu_class char(1) ,
  stu_gender char(1) ,
  stu_height NUMBER ,
  stu_weight NUMBER
 
);

CREATE TABLE subject (
  sub_no char(3) PRIMARY KEY,
  sub_name varchar(30) ,
  sub_prof varchar(12) ,
  sub_grade NUMBER ,
  sub_dept varchar(20) 
) ;

CREATE TABLE enrol (
  sub_no char(3) REFERENCES subject(sub_no),
  stu_no char(9) REFERENCES student(stu_no),
  enr_grade NUMBER 
);

INSERT INTO STUDENT VALUES(20153075,'옥한빛','기계',1,'C','M',177,80);
INSERT INTO STUDENT VALUES(20153088,'이태연','기계',1,'C','F',162,50);
INSERT INTO STUDENT VALUES(20143054,'유가인','기계',2,'C','F',154,47);
INSERT INTO STUDENT VALUES(20152088,'조민우','전기전자',1,'C','M',188,90);
INSERT INTO STUDENT VALUES(20142021,'심수정','전기전자',2,'A','F',168,45);
INSERT INTO STUDENT VALUES(20132003,'박희철','전기전자',3,'B','M',NULL,63);
INSERT INTO STUDENT VALUES(20151062,'김인중','컴퓨터정보',1,'B','M',166,67);
INSERT INTO STUDENT VALUES(20141007,'진현무','컴퓨터정보',2,'A','M',174,64);
INSERT INTO STUDENT VALUES(20131001,'김종헌','컴퓨터정보',3,'C','M',NULL,72);
INSERT INTO STUDENT VALUES(20131025,'옥성우','컴퓨터정보',3,'A','F',172,63);
INSERT INTO SUBJECT VALUES('111', '데이터베이스', '이재영',2,'컴퓨터정보');
INSERT INTO SUBJECT VALUES('110', '자동제어','정순정',2,'전기전자');
INSERT INTO SUBJECT VALUES('109', '자동화설계','박민영',3,'기계');
INSERT INTO SUBJECT VALUES('101', '컴퓨터개론','강종영',3,'컴퓨터정보');
INSERT INTO SUBJECT VALUES('102', '기계공작법','김태영',1,'기계');
INSERT INTO SUBJECT VALUES('103', '기초전자실험','김유석',1,'전기전자');
INSERT INTO SUBJECT VALUES('104', '시스템분석설계','강석현',3,'컴퓨터정보');
INSERT INTO SUBJECT VALUES('105', '기계요소설계','김명성',1,'기계');
INSERT INTO SUBJECT VALUES('106', '전자회로실험','최영민',3,'전기전자');
INSERT INTO SUBJECT VALUES('107', 'CAD응용실습','구봉규',2,'기계');
INSERT INTO SUBJECT VALUES('108', '소프트웨어공학','권민성',1,'컴퓨터정보');
INSERT INTO ENROL VALUES('101', '20131001', 80);
INSERT INTO ENROL VALUES('104', '20131001', 56);
INSERT INTO ENROL VALUES('106', '20132003', 72);
INSERT INTO ENROL VALUES('103', '20152088', 45);
INSERT INTO ENROL VALUES('101', '20131025', 65);
INSERT INTO ENROL VALUES('104', '20131025', 65);
INSERT INTO ENROL VALUES('108', '20151062', 81);
INSERT INTO ENROL VALUES('107', '20143054', 41);
INSERT INTO ENROL VALUES('102', '20153075', 66);
INSERT INTO ENROL VALUES('105', '20153075', 56);
INSERT INTO ENROL VALUES('102', '20153088', 61);
INSERT INTO ENROL VALUES('105', '20153088', 78);

---------------------------------------------------------------------------------------

select * from student;
select * from subject;
select * from enrol;

---------------------------------------------------------------------------------------

select  count(*) from student where stu_height >= 180;

select * from student where stu_dept = '전기전자' and stu_weight >= 50;

update student
set stu_height = stu_height + 1
where  stu_dept = '컴퓨터정보' and stu_height is not null;

SELECT AVG(ENR_GRADE) AS 평균, STU_NO 
FROM ENROL 
GROUP BY STU_NO 
ORDER BY 평균 DESC;       -- 별칭에 대해서도 order by 를 줄수있다.

SELECT MAX(ENR_GRADE) AS 최고점수, SUB_NO as 과목
FROM ENROL
GROUP BY SUB_NO
ORDER BY SUB_NO;

select * from subject where sub_name like ('%설계%');

select avg(stu_height) as 평균키 , STU_GRADE as 학년, STU_GENDER as 성별
from student 
where stu_grade = 2 and stu_gender = 'M'
group by STU_GRADE, STU_GENDER  ;

select * from student;

---------------------------------------------------------------------------------------
CREATE TABLE Book (
bookid NUMBER(2) PRIMARY KEY,
bookname VARCHAR2(40),
publisher VARCHAR2(40),
price NUMBER(8)
);

CREATE TABLE Customer (
custid NUMBER(2) PRIMARY KEY,
name VARCHAR2(40),
address VARCHAR2(50),
phone VARCHAR2(20)
);

CREATE TABLE Orders (
orderid NUMBER(2) PRIMARY KEY,
custid NUMBER(2) REFERENCES Customer(custid),
bookid NUMBER(2) REFERENCES Book(bookid),
saleprice NUMBER(8),
orderdate DATE
);

/* Book, Customer, Orders 데이터 생성 */
INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전', NULL);

INSERT INTO Orders VALUES (1, 1, 1, 6000, TO_DATE('2020-07-01','yyyy-mm-dd'));
INSERT INTO Orders VALUES (2, 1, 3, 21000, TO_DATE('2020-07-03','yyyy-mm-dd'));
INSERT INTO Orders VALUES (3, 2, 5, 8000, TO_DATE('2020-07-03','yyyy-mm-dd'));
INSERT INTO Orders VALUES (4, 3, 6, 6000, TO_DATE('2020-07-04','yyyy-mm-dd'));
INSERT INTO Orders VALUES (5, 4, 7, 20000, TO_DATE('2020-07-05','yyyy-mm-dd'));
INSERT INTO Orders VALUES (6, 1, 2, 12000, TO_DATE('2020-07-07','yyyy-mm-dd'));
INSERT INTO Orders VALUES (7, 4, 8, 13000, TO_DATE('2020-07-07','yyyy-mm-dd'));
INSERT INTO Orders VALUES (8, 3, 10, 12000, TO_DATE('2020-07-08','yyyy-mm-dd'));
INSERT INTO Orders VALUES (9, 2, 10, 7000, TO_DATE('2020-07-09','yyyy-mm-dd'));
INSERT INTO Orders VALUES (10, 3, 8, 13000, TO_DATE('2020-07-10','yyyy-mm-dd'));

CREATE TABLE Imported_Book (
bookid NUMBER,
bookname VARCHAR(40),
publisher VARCHAR(40),
price NUMBER(8)
);

INSERT INTO Imported_Book VALUES(21, 'Zen Golf', 'Pearson', 12000);
INSERT INTO Imported_Book VALUES(22, 'Soccer Skills', 'Human Kinetics', 15000);

COMMIT;

-------------ANSI JOIN-----------------
SELECT O.* , B.BOOKNAME , C.NAME -- O 뒤에있는건 다 출력 , B는 BOOKNAME 만 출력
FROM ORDERS O       -- ORDERS 에 O 라는 별칭을 붙혀준다.
INNER JOIN BOOK B ON O.BOOKID = B.BOOKID  -- O.BOOKID 랑 B.BOOKID 있는애랑 묶는다는 의미   BOOK 을 ORDERS 에 조인한다.
INNER JOIN CUSTOMER C ON C.CUSTID = O.CUSTID;

-------------ANSI JOIN-----------------
SELECT E.*, S.STU_NAME, S2.SUB_NAME      --  두개 이상의 값이 있을경우엔 앞에 테이블 . <= 이걸 써준다.
FROM ENROL E
INNER JOIN STUDENT S ON S.STU_NO = E.STU_NO
INNER JOIN SUBJECT S2 ON S2.SUB_NO = E.SUB_NO;

-- 학생들의 성적 테이블 => 컴퓨터 정보 학과의 학생들만 출력하라----
SELECT E.*, S.STU_NAME, S2.SUB_NAME , S.STU_DEPT
FROM ENROL E
INNER JOIN STUDENT S ON S.STU_NO = E.STU_NO
INNER JOIN SUBJECT S2 ON S2.SUB_NO = E.SUB_NO
WHERE S.STU_DEPT LIKE ('%컴퓨터정보%');

--------2개씩 나와서 수정한부분--------------------------------
SELECT COUNT(*), SUB_NO, STU_NO FROM ENROL
GROUP BY SUB_NO, STU_NO;

DELETE FROM ENROL;

INSERT INTO ENROL VALUES('101', '20131001', 80);
INSERT INTO ENROL VALUES('104', '20131001', 56);
INSERT INTO ENROL VALUES('106', '20132003', 72);
INSERT INTO ENROL VALUES('103', '20152088', 45);
INSERT INTO ENROL VALUES('101', '20131025', 65);
INSERT INTO ENROL VALUES('104', '20131025', 65);
INSERT INTO ENROL VALUES('108', '20151062', 81);
INSERT INTO ENROL VALUES('107', '20143054', 41);
INSERT INTO ENROL VALUES('102', '20153075', 66);
INSERT INTO ENROL VALUES('105', '20153075', 56);
INSERT INTO ENROL VALUES('102', '20153088', 61);
INSERT INTO ENROL VALUES('105', '20153088', 78);
----------------------------------------------------------