select bookname, publisher, price from book where bookname like '�౸�� ����';

select phone from customer where name='�迬��';

select bookname, price from book;

select * from book;

select price, bookname from book;

select bookid , bookname, publisher, price from book;

select publisher from book;

select distinct publisher from book;        --distinct�� �ߺ�����

select * from book where price < '20000';

select * from book where price between 10000 and 20000;

select * from book where price >= 10000 and price <=20000;

select * from book where publisher in('�½�����', '���ѹ̵��');

select * from book where publisher not in('�½�����', '���ѹ̵��');

select bookname, publisher from book where bookname like '�౸�� ����';

select bookname, publisher from book where bookname like'%�౸%';

select * from book where bookname like'_��%';

select * from book order by bookname;

select * from book order by price , bookname;

select * from book order by price desc , publisher asc;

select  sum(saleprice) from orders;


-- �ּ�ó�� ~~   -- ��� �����ָ��~----

select * from book where price != 13000;    -- != �̰͵� ����������

select * from book where price in('7000', '22000','13000'); -- in( ã����� ģ���� �˻�)

select * from book where price not in('7000', '22000','13000'); -- not in( ã����� ���� ģ���� �˻�) 

select * from customer;

select * from customer where phone is null; -- null �� ģ���鸸 �˻�

select * from customer where phone is not null; -- null �� ģ���� ���� �˻�

select * from book where bookname like '%�౸%';   -- % �� �տ� ����� ���� �ڿ� ����� ���� �౸�� ���ԵȰ� �˻�

select * from book order by price  ;   -- order by�� �������ִ� ��ɾ�

select * from book order by price DESC  ;   -- asc �� �������� desc �� ��������

select * from book order by price asc , bookname desc ; -- price �� �������� / bookname �� ��������

select * from book order by publisher , bookname desc ;

select publisher, bookname from book order by publisher , bookname desc ;

---------------------------------------------------------------------------------------

select * from book where price >= 20000;

select * from book  where bookname like ('%�߱�%');

select * from book where publisher='�½�����' order by price desc;

select * from book where price >= 5000 and price <= 20000;
-- select * from book where price between 5000 and 20000;   ���� ���� �ǹ�

select * from customer where phone is not null and custid >= 3;

select sum(price) from book;        -- sum() �Լ��� �̿��Ͽ� price�� ��ü ���� �����ش�.

select sum(price) as test from book;        -- as �� �� �÷��� ��Ī�� �����ִ°���

select max(price) from book;        -- max() �� �ִ밪 �˻����ִ°�

select count(*) from book;  -- count() ��ü ���ڵ��� ��! /  -- ���� ���ǽ� �� �ٴ´�
                       
select count(*) from book where price > 15000;

select avg(price) as avg from book;        -- avg() ��հ� ������

---------------------------------------------------------------------------------------

select publisher as ���ǻ� , avg(price) as ���, count(*) as ����, max(price) from book group by publisher ;       -- group by �� �� Column�� �׷���� �����ش�. �׸��� ����� �����ش�.

---------------------------------------------------------------------------------------

delete from orders where saleprice < 10000;     -- ���� ! (1���� �̸�)
commit;     --- commit ������� ������ ���� �Ұ����ϴ�.
            --  �̰� ����� �Ϻ��ϰ� ������ �����ϴ�.
            
---------------------------------------------------------------------------------------

update book
set bookname = '�౸�� ����' 
    , price = 7000
where bookid = 1;       -- �̸����� �����Ҷ� update ~ set �� ����Ѵ�.   
                        -- �����Ҷ� primary key ������ �������ش�.

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

INSERT INTO STUDENT VALUES(20153075,'���Ѻ�','���',1,'C','M',177,80);
INSERT INTO STUDENT VALUES(20153088,'���¿�','���',1,'C','F',162,50);
INSERT INTO STUDENT VALUES(20143054,'������','���',2,'C','F',154,47);
INSERT INTO STUDENT VALUES(20152088,'���ο�','��������',1,'C','M',188,90);
INSERT INTO STUDENT VALUES(20142021,'�ɼ���','��������',2,'A','F',168,45);
INSERT INTO STUDENT VALUES(20132003,'����ö','��������',3,'B','M',NULL,63);
INSERT INTO STUDENT VALUES(20151062,'������','��ǻ������',1,'B','M',166,67);
INSERT INTO STUDENT VALUES(20141007,'������','��ǻ������',2,'A','M',174,64);
INSERT INTO STUDENT VALUES(20131001,'������','��ǻ������',3,'C','M',NULL,72);
INSERT INTO STUDENT VALUES(20131025,'������','��ǻ������',3,'A','F',172,63);
INSERT INTO SUBJECT VALUES('111', '�����ͺ��̽�', '���翵',2,'��ǻ������');
INSERT INTO SUBJECT VALUES('110', '�ڵ�����','������',2,'��������');
INSERT INTO SUBJECT VALUES('109', '�ڵ�ȭ����','�ڹο�',3,'���');
INSERT INTO SUBJECT VALUES('101', '��ǻ�Ͱ���','������',3,'��ǻ������');
INSERT INTO SUBJECT VALUES('102', '�����۹�','���¿�',1,'���');
INSERT INTO SUBJECT VALUES('103', '�������ڽ���','������',1,'��������');
INSERT INTO SUBJECT VALUES('104', '�ý��ۺм�����','������',3,'��ǻ������');
INSERT INTO SUBJECT VALUES('105', '����Ҽ���','���',1,'���');
INSERT INTO SUBJECT VALUES('106', '����ȸ�ν���','�ֿ���',3,'��������');
INSERT INTO SUBJECT VALUES('107', 'CAD����ǽ�','������',2,'���');
INSERT INTO SUBJECT VALUES('108', '����Ʈ�������','�ǹμ�',1,'��ǻ������');
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

select * from student where stu_dept = '��������' and stu_weight >= 50;

update student
set stu_height = stu_height + 1
where  stu_dept = '��ǻ������' and stu_height is not null;

SELECT AVG(ENR_GRADE) AS ���, STU_NO 
FROM ENROL 
GROUP BY STU_NO 
ORDER BY ��� DESC;       -- ��Ī�� ���ؼ��� order by �� �ټ��ִ�.

SELECT MAX(ENR_GRADE) AS �ְ�����, SUB_NO as ����
FROM ENROL
GROUP BY SUB_NO
ORDER BY SUB_NO;

select * from subject where sub_name like ('%����%');

select avg(stu_height) as ���Ű , STU_GRADE as �г�, STU_GENDER as ����
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

/* Book, Customer, Orders ������ ���� */
INSERT INTO Book VALUES(1, '�౸�� ����', '�½�����', 7000);
INSERT INTO Book VALUES(2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO Book VALUES(3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO Book VALUES(4, '���� ���̺�', '���ѹ̵��', 35000);
INSERT INTO Book VALUES(5, '�ǰ� ����', '�½�����', 8000);
INSERT INTO Book VALUES(6, '���� �ܰ躰���', '�½�����', 6000);
INSERT INTO Book VALUES(7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO Book VALUES(8, '�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO Book VALUES(9, '�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '������', '���� ��ü��Ÿ', '000-5000-0001');
INSERT INTO Customer VALUES (2, '�迬��', '���ѹα� ����', '000-6000-0001');
INSERT INTO Customer VALUES (3, '��̶�', '���ѹα� ������', '000-7000-0001');
INSERT INTO Customer VALUES (4, '�߽ż�', '�̱� Ŭ������', '000-8000-0001');
INSERT INTO Customer VALUES (5, '�ڼ���', '���ѹα� ����', NULL);

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
SELECT O.* , B.BOOKNAME , C.NAME -- O �ڿ��ִ°� �� ��� , B�� BOOKNAME �� ���
FROM ORDERS O       -- ORDERS �� O ��� ��Ī�� �����ش�.
INNER JOIN BOOK B ON O.BOOKID = B.BOOKID  -- O.BOOKID �� B.BOOKID �ִ¾ֶ� ���´ٴ� �ǹ�   BOOK �� ORDERS �� �����Ѵ�.
INNER JOIN CUSTOMER C ON C.CUSTID = O.CUSTID;

-------------ANSI JOIN-----------------
SELECT E.*, S.STU_NAME, S2.SUB_NAME      --  �ΰ� �̻��� ���� ������쿣 �տ� ���̺� . <= �̰� ���ش�.
FROM ENROL E
INNER JOIN STUDENT S ON S.STU_NO = E.STU_NO
INNER JOIN SUBJECT S2 ON S2.SUB_NO = E.SUB_NO;

-- �л����� ���� ���̺� => ��ǻ�� ���� �а��� �л��鸸 ����϶�----
SELECT E.*, S.STU_NAME, S2.SUB_NAME , S.STU_DEPT
FROM ENROL E
INNER JOIN STUDENT S ON S.STU_NO = E.STU_NO
INNER JOIN SUBJECT S2 ON S2.SUB_NO = E.SUB_NO
WHERE S.STU_DEPT LIKE ('%��ǻ������%');

--------2���� ���ͼ� �����Ѻκ�--------------------------------
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