select * from emp;
select ename, hiredate from emp;
-- IN, NOT IN ������
-- IN : list�� �� �� ��� �ϳ��� ��ġ�ϴ� ������ ���
-- NOT IN : list�� ���� �ϯ��� �ʴ� �����͸� ���
-- �μ��ڵ尡 10, 20�� ���ڵ带 �����϶�
select * from emp where deptno=10 or deptno=20;
select * from emp where deptno in(10, 20);
-- �μ��ڵ尡 10, 20�� ������ ���ڵ带 �����϶�
select * from emp where deptno not in(10, 20)

-- BETWEEN ������
-- a�� b ������ ������ ��� (a,b�� ����)
-- �޿��� 2000~3000�� ���̿� ����� �����϶�
select * from emp where sal>=2000 and sal<=3000;
select * from emp where sal between 2000 and 3000;
select * from emp where sal not between 2000 and 3000;

-- LIKE ������
-- ���� ���·� ��ġ�ϴ� �����͸� ���
-- Ư�� ���ڰ� ���� �Ǵ� ����, ���� ��� ����
-- % : �������� ���ڿ��� ��Ÿ���� ���ϵ� ī��
-- _ : �� �ϳ��� ���ڸ� ��Ÿ���� ���ϵ� ī��
-- ����� s�� �����ϸ� �����϶�
select * from emp where ename like 'S%'; --/'S'�� �����ϴ� ������ �˻�
select * from emp where ename like '%S'; --/'S'�� ������ ������ �˻�
select * from emp where ename like '%A%'; --'A' ���ڰ� �ִ� ������ �˻�
select * from emp where ename like '_A%'; --'A' ���ڰ� �ι�°�� ��ġ�� ������ �˻�
select * from emp where ename like '__A%'; --'A' ���ڰ� ����°�� ��ġ�� ������ �˻�
-- ������� ����° ���� A�� ��� �����ϰ� �����϶�
select * from emp where ename not like '__A%'; --'A' ���ڰ� ����°�� ��ġ�� �����͸� ���� �˻�

select * from emp where comm is null; --
select * from emp where comm is not null;

-- [����1] ��� ��� �� �����ȣ, �����, �Ի���, �޿��� �����ϵ� �޿��� 2500���� 3500 ������ ����� �޿������� �����϶�
select empno, ename, hiredate, sal from emp where sal between 2500 and 3500 order by sal asc;
-- [����2] �μ��ڵ尡 20, 30�� �μ��� ����� �Ի����� 12���� ����� �����ȣ������ �����϶�
select * from emp where deptno in(20, 30) or hiredate like '___12%' order by empno asc;