-- 점수가 전체평균보다 높은 점수를 받은 목록 출력--
SELECT STU_NAME , ENR_GRADE , ROUND(AVG_ALL, 2) AS "전체 평균"      -- 띄어쓰기 단어 쓰려면 "" 큰따옴표로 쓴다.
FROM STUDENT S
INNER JOIN ENROL E ON S.STU_NO = E.STU_NO
INNER JOIN (                                        -- 서브쿼리는 꼭 괄호안에서 제어해야함
    SELECT AVG(ENR_GRADE) AS AVG_ALL FROM ENROL
    ) A ON E.ENR_GRADE > A.AVG_ALL;
    
--1. 학생들 전체 평균 키보다 큰 학생들의 이름, 학번, 키 출력
SELECT S.STU_NAME , S.STU_NO , S.STU_HEIGHT
FROM STUDENT S
INNER JOIN (
        SELECT AVG(STU_HEIGHT) AS AVG_H FROM STUDENT
      ) B ON S.STU_HEIGHT > B.AVG_H;

--2. 컴퓨터 정보 학과 학생들의 평균 점수보다 높은 점수를 받은 학생들의 이름, 과목명, 점수 출력
SELECT S.STU_NAME, S2.SUB_NAME , E.ENR_GRADE
FROM ENROL E
INNER JOIN STUDENT S ON S.STU_NO = E.STU_NO
INNER JOIN SUBJECT S2 ON S2.SUB_NO = E.SUB_NO
INNER JOIN (                                       
    SELECT AVG(ENR_GRADE) AS AVG_ALL FROM ENROL
    ) A ON E.ENR_GRADE > A.AVG_ALL
    
WHERE S.STU_DEPT LIKE ('%컴퓨터정보%');
--3. 본인 학과의 평균 키보다 큰 학생들의 이름, 학과, 키, 학과 평균키 값 출력

SELECT S.STU_NAME, S.STU_DEPT, S.STU_HEIGHT, ROUND(AVG_DEPT, 2) AS 학과평균
FROM STUDENT S
INNER JOIN (
    SELECT AVG(STU_HEIGHT) AS AVG_DEPT, STU_DEPT
    FROM STUDENT
    GROUP BY STU_DEPT
) A ON S.STU_DEPT = A.STU_DEPT
WHERE S.STU_HEIGHT > A.AVG_DEPT;


