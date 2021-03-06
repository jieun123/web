select * from emp;
select ename, hiredate from emp;
-- IN, NOT IN 연산자
-- IN : list의 값 중 어느 하나와 일치하는 데이터 출력
-- NOT IN : list의 값과 일칳지 않는 데이터를 출력
-- 부서코드가 10, 20인 레코드를 선택하라
select * from emp where deptno=10 or deptno=20;
select * from emp where deptno in(10, 20);
-- 부서코드가 10, 20을 제외한 레코드를 선택하라
select * from emp where deptno not in(10, 20)

-- BETWEEN 연산자
-- a와 b 사이의 데이터 출력 (a,b값 포함)
-- 급여가 2000~3000불 사이엔 사원을 선택하라
select * from emp where sal>=2000 and sal<=3000;
select * from emp where sal between 2000 and 3000;
select * from emp where sal not between 2000 and 3000;

-- LIKE 연산자
-- 문자 형태로 일치하는 데이터를 출력
-- 특정 문자가 포함 또는 시작, 끝일 경우 선택
-- % : 여러개의 문자열을 나타내는 와일드 카드
-- _ : 단 하나의 문자를 나타내는 와일드 카드
-- 사원명에 s로 시작하면 선택하라
select * from emp where ename like 'S%'; --/'S'로 시작하는 데이터 검색
select * from emp where ename like '%S'; --/'S'로 끝나는 데이터 검색
select * from emp where ename like '%A%'; --'A' 문자가 있는 데이터 검색
select * from emp where ename like '_A%'; --'A' 문자가 두번째에 위치한 데이터 검색
select * from emp where ename like '__A%'; --'A' 문자가 세번째에 위치한 데이터 검색
-- 사원명의 세번째 문자 A인 사원 제외하고 선택하라
select * from emp where ename not like '__A%'; --'A' 문자가 세번째에 위치한 데이터를 빼고 검색

select * from emp where comm is null; --
select * from emp where comm is not null;

-- [문제1] 사원 목록 중 사원번호, 사원명, 입사일, 급여를 선택하되 급여가 2500에서 3500 사이인 사원을 급여순으로 선택하라
select empno, ename, hiredate, sal from emp where sal between 2500 and 3500 order by sal asc;
-- [문제2] 부서코드가 20, 30번 부서인 사원과 입사일이 12월인 사원을 사원번호순으로 선택하라
select * from emp where deptno in(20, 30) or hiredate like '___12%' order by empno asc;