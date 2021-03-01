select * from emp;
select ename, hiredate from emp;
-- IN, NOT IN ¿¬»êÀÚ
-- IN : listÀÇ °ª Áß ¾î´À ÇÏ³ª¿Í ÀÏÄ¡ÇÏ´Â µ¥ÀÌÅÍ Ãâ·Â
-- NOT IN : listÀÇ °ª°ú ÀÏ¯†Áö ¾Ê´Â µ¥ÀÌÅÍ¸¦ Ãâ·Â
-- ºÎ¼­ÄÚµå°¡ 10, 20ÀÎ ·¹ÄÚµå¸¦ ¼±ÅÃÇÏ¶ó
select * from emp where deptno=10 or deptno=20;
select * from emp where deptno in(10, 20);
-- ºÎ¼­ÄÚµå°¡ 10, 20À» Á¦¿ÜÇÑ ·¹ÄÚµå¸¦ ¼±ÅÃÇÏ¶ó
select * from emp where deptno not in(10, 20)

-- BETWEEN ¿¬»êÀÚ
-- a¿Í b »çÀÌÀÇ µ¥ÀÌÅÍ Ãâ·Â (a,b°ª Æ÷ÇÔ)
-- ±Ş¿©°¡ 2000~3000ºÒ »çÀÌ¿£ »ç¿øÀ» ¼±ÅÃÇÏ¶ó
select * from emp where sal>=2000 and sal<=3000;
select * from emp where sal between 2000 and 3000;
select * from emp where sal not between 2000 and 3000;

-- LIKE ¿¬»êÀÚ
-- ¹®ÀÚ ÇüÅÂ·Î ÀÏÄ¡ÇÏ´Â µ¥ÀÌÅÍ¸¦ Ãâ·Â
-- Æ¯Á¤ ¹®ÀÚ°¡ Æ÷ÇÔ ¶Ç´Â ½ÃÀÛ, ³¡ÀÏ °æ¿ì ¼±ÅÃ
-- % : ¿©·¯°³ÀÇ ¹®ÀÚ¿­À» ³ªÅ¸³»´Â ¿ÍÀÏµå Ä«µå
-- _ : ´Ü ÇÏ³ªÀÇ ¹®ÀÚ¸¦ ³ªÅ¸³»´Â ¿ÍÀÏµå Ä«µå
-- »ç¿ø¸í¿¡ s·Î ½ÃÀÛÇÏ¸é ¼±ÅÃÇÏ¶ó
select * from emp where ename like 'S%'; --/'S'·Î ½ÃÀÛÇÏ´Â µ¥ÀÌÅÍ °Ë»ö
select * from emp where ename like '%S'; --/'S'·Î ³¡³ª´Â µ¥ÀÌÅÍ °Ë»ö
select * from emp where ename like '%A%'; --'A' ¹®ÀÚ°¡ ÀÖ´Â µ¥ÀÌÅÍ °Ë»ö
select * from emp where ename like '_A%'; --'A' ¹®ÀÚ°¡ µÎ¹øÂ°¿¡ À§Ä¡ÇÑ µ¥ÀÌÅÍ °Ë»ö
select * from emp where ename like '__A%'; --'A' ¹®ÀÚ°¡ ¼¼¹øÂ°¿¡ À§Ä¡ÇÑ µ¥ÀÌÅÍ °Ë»ö
-- »ç¿ø¸íÀÇ ¼¼¹øÂ° ¹®ÀÚ AÀÎ »ç¿ø Á¦¿ÜÇÏ°í ¼±ÅÃÇÏ¶ó
select * from emp where ename not like '__A%'; --'A' ¹®ÀÚ°¡ ¼¼¹øÂ°¿¡ À§Ä¡ÇÑ µ¥ÀÌÅÍ¸¦ »©°í °Ë»ö

select * from emp where comm is null; --
select * from emp where comm is not null;

-- [¹®Á¦1] »ç¿ø ¸ñ·Ï Áß »ç¿ø¹øÈ£, »ç¿ø¸í, ÀÔ»çÀÏ, ±Ş¿©¸¦ ¼±ÅÃÇÏµÇ ±Ş¿©°¡ 2500¿¡¼­ 3500 »çÀÌÀÎ »ç¿øÀ» ±Ş¿©¼øÀ¸·Î ¼±ÅÃÇÏ¶ó
select empno, ename, hiredate, sal from emp where sal between 2500 and 3500 order by sal asc;
-- [¹®Á¦2] ºÎ¼­ÄÚµå°¡ 20, 30¹ø ºÎ¼­ÀÎ »ç¿ø°ú ÀÔ»çÀÏÀÌ 12¿ùÀÎ »ç¿øÀ» »ç¿ø¹øÈ£¼øÀ¸·Î ¼±ÅÃÇÏ¶ó
select * from emp where deptno in(20, 30) or hiredate like '___12%' order by empno asc;