select sal, sal + 300 upsal
from emp
where sal <= 1600;

select *
from emp;

select *
from emp
where sal * 12 = 36000;

select empno, ename, sal
from emp
where sal <= 1500;

select empno, ename, sal
from emp
where ename ='SCOTT';

select ename, deptno, job
from emp
where deptno = 10 AND job = 'MANAGER';

select ename, deptno, job
from emp
where deptno = 10 or job = 'MANAGER';

select ename, deptno, job
from emp
where not deptno = 10;

select ename, deptno, sal
from emp
where sal between 2000 and 3000;

select ename, empno, comm, sal
from emp
where comm = 300 or comm = 500 or comm = 1400;