-- ������ ��ü��պ��� ���� ������ ���� ��� ���--
SELECT STU_NAME , ENR_GRADE , ROUND(AVG_ALL, 2) AS "��ü ���"      -- ���� �ܾ� ������ "" ū����ǥ�� ����.
FROM STUDENT S
INNER JOIN ENROL E ON S.STU_NO = E.STU_NO
INNER JOIN (                                        -- ���������� �� ��ȣ�ȿ��� �����ؾ���
    SELECT AVG(ENR_GRADE) AS AVG_ALL FROM ENROL
    ) A ON E.ENR_GRADE > A.AVG_ALL;
    
--1. �л��� ��ü ��� Ű���� ū �л����� �̸�, �й�, Ű ���
SELECT S.STU_NAME , S.STU_NO , S.STU_HEIGHT
FROM STUDENT S
INNER JOIN (
        SELECT AVG(STU_HEIGHT) AS AVG_H FROM STUDENT
      ) B ON S.STU_HEIGHT > B.AVG_H;

--2. ��ǻ�� ���� �а� �л����� ��� �������� ���� ������ ���� �л����� �̸�, �����, ���� ���
SELECT S.STU_NAME, S2.SUB_NAME , E.ENR_GRADE
FROM ENROL E
INNER JOIN STUDENT S ON S.STU_NO = E.STU_NO
INNER JOIN SUBJECT S2 ON S2.SUB_NO = E.SUB_NO
INNER JOIN (                                       
    SELECT AVG(ENR_GRADE) AS AVG_ALL FROM ENROL
    ) A ON E.ENR_GRADE > A.AVG_ALL
    
WHERE S.STU_DEPT LIKE ('%��ǻ������%');
--3. ���� �а��� ��� Ű���� ū �л����� �̸�, �а�, Ű, �а� ���Ű �� ���

SELECT S.STU_NAME, S.STU_DEPT, S.STU_HEIGHT, ROUND(AVG_DEPT, 2) AS �а����
FROM STUDENT S
INNER JOIN (
    SELECT AVG(STU_HEIGHT) AS AVG_DEPT, STU_DEPT
    FROM STUDENT
    GROUP BY STU_DEPT
) A ON S.STU_DEPT = A.STU_DEPT
WHERE S.STU_HEIGHT > A.AVG_DEPT;


