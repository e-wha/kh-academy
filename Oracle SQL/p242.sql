select deptno
from emp
where ename = 'SCOTT';

select dname
from dept
where deptno = 20;

select dname
from dept
where deptno = (
    select deptno
    from emp
    where ename = 'SCOTT'
    );

select *
from emp
where ename = 'ALLEN';

select comm
from emp
where comm > 300;

select *
from emp
where comm = (
    select comm 
    from emp 
    where ename = 'ALLEN'
    );

select ename, deptno
from emp
where deptno = (
    select deptno
    from emp
    where ename = 'SCOTT');
    
select *
from emp
where job = (
    select job
    from emp
    where ename = 'SCOTT');
    
select ename, sal
from emp
where sal >= (
    select sal
    from emp
    where ename = 'SCOTT');
    
select ename, e.deptno
from emp e, dept d
where e.deptno = d.deptno and loc = 'DALLAS';

select ename, deptno
from emp
where deptno = (
    select deptno
    from dept
    where loc = 'DALLAS');


select ename, sal
from emp e, dept d
where e.deptno = d.deptno and dname = 'SALES';

select ename, sal
from emp
where deptno = (
    select deptno
    from dept
    where dname = 'SALES');

select ename, sal
from emp
where mgr = (
    select empno
    from emp
    where ename = 'KING');

select *
from emp
where deptno in (10, 20);

select *
from emp
where sal = any (
    select max(sal)
    from emp
    group by deptno);
    
select *
from emp
where sal = some (
    select max(sal)
    from emp
    group by deptno);
    
select *
from emp
where sal > any(
    select max(sal)
    from emp
    where deptno = 30) order by sal, empno;

select *
from emp
where sal < any (
    select sal
    from emp
    where deptno = 30) order by sal, empno;
    
select *
from emp
where sal < all (
    select sal
    from emp
    where deptno = 30) order by sal, empno;
    
select *
from emp
where sal > all (
    select sal
    from emp
    where deptno = 30) order by sal, empno;
    
select *
from emp
where exists (
    select sal
    from emp
    where deptno = 30) order by sal, empno;

select *
from emp
where exists (
    select sal
    from emp
    where deptno = 40) order by sal, empno;
    
-- in
select empno, ename, sal, emp.deptno
from emp
where sal in (
    select max(sal)
    from emp
    group by deptno);
    
select d.deptno, dname, loc
from dept d join emp e on(d.deptno = e.deptno)
where job in ('MANAGER');

select *
from emp;

select ename, sal
from emp
where ename in (
    select ename 
    from emp 
    where sal > (
        select max(sal)
        from emp
        where deptno = 30));
    
select ename, sal, job
from emp
where job != 'SALESMAN' and sal > any (
    select min(sal)
    from emp
    where job = 'SALESMAN');

select ename, sal
from emp
where deptno != 20 and sal > any(
    select max(sal)
    from emp
    where job = 'SALESMAN');

select ename, sal, job
from emp
where job != 'SALESMAN' and sal > all (
    select min(sal)
    from emp
    where job != 'SALESMAN');

select ename, sal, job
from emp
where deptno != 20 and sal > all (
    select max(sal)
    from emp
    where job = 'SALESMAN');