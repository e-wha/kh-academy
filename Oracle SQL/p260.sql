select e10.empno, e10.ename, e10.deptno, d.dname, d.loc
from (select * from emp where deptno = 10) e10,
     (select * from dept) d
where e10.deptno = d.deptno;

select empno, ename, job, sal, (select grade from salgrade where emp.sal between losal and hisal) as grade
from emp;

-- Q1
select job, empno, ename, sal, e.deptno, dname
from emp e join dept d on(e.deptno = d.deptno)
where job = (
    select job
    from emp
    where ename = 'ALLEN') order by empno;
    
-- Q2
select empno, ename, dname, hiredate, loc, sal, (select grade from salgrade where e.sal between losal and hisal) as grade
from emp e join dept d on(e.deptno = d.deptno)
where sal > any (
    select avg(sal)
    from emp) order by sal desc;

-- Q3
select empno, ename, job, e.deptno, dname, loc
from emp e join dept d on(e.deptno = d.deptno)
where e.deptno = 10 and job not in(
    select job
    from emp
    where deptno = 30);
    
-- Q4
select empno, ename, sal, (select grade from salgrade where emp.sal between losal and hisal) as grade
from emp
where sal > any(
    select max(sal)
    from emp
    where job = 'SALESMAN') order by empno;