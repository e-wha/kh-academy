select *
from emp, dept;

select *
from emp, dept
where emp.deptno = dept.deptno
order by empno;

select *
from emp e, dept d
where e.deptno = d.deptno
order by empno;

select empno, ename, emp.deptno, dname, loc
from emp, dept
where emp.deptno = dept.deptno;

select e.empno, e.ename, e.sal, d.deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno and sal <= 2500 and e.empno <= 9999
order by e.empno;

select dname
from emp, dept
where emp.deptno = dept.deptno and emp.ename = 'SCOTT';

select ename, sal
from emp, dept
where emp.deptno = dept.deptno and loc = 'NEW YORK';

select ename, hiredate
from emp, dept
where emp.deptno = dept.deptno and dname = 'ACCOUNTING';

select ename, dname
from emp, dept
where emp.deptno = dept.deptno and job = 'MANAGER';

select *
from salgrade;

select ename, sal, grade
from emp, salgrade
where sal between losal and hisal
order by ename;

select *
from emp, dept
where emp.deptno = dept.deptno;

select ename, job
from emp
where mgr = (select empno from emp where ename = 'KING');

select e.empno, e.ename, e.mgr, m.empno, m.ename
from emp e, emp m
where e.mgr(+) = m.empno
order by e.empno;
