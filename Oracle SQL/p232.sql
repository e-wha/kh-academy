select empno, ename, emp.deptno
from emp, dept;

select empno, ename, deptno
from emp natural join dept;

select e.empno, e.ename, deptno
from emp e natural join dept d;

-- 기존 두 테이블 활용 방법
select *
from emp e, dept d
where e.deptno = d.deptno;

-- using 사용 방법
select *
from emp e join dept d using(deptno);

-- on 사용
select *
from emp e join dept d on(e.deptno = d.deptno);

select *
from emp e1 full outer join emp e2 on(e1.mgr = e2.empno);

-- p239
-- Q1
select e.deptno, dname, ename, sal
from emp e, dept d
where e.deptno = d.deptno and e.sal > 2000;

select e.deptno, dname, ename, sal
from emp e join dept d on(e.deptno = d.deptno and e.sal > 2000);

-- Q2
select e.deptno, dname, trunc(avg(sal)) as avg_sal, max(sal) as max_sal, min(sal) as min_sal, count(ename)
from emp e, dept d
where e.deptno = d.deptno
group by e.deptno, dname;

select e.deptno, dname, trunc(avg(sal)) as avg_sal, max(sal) as max_sal, min(sal) as min_sal, count(ename)
from emp e join dept d on(e.deptno = d.deptno)
group by e.deptno, dname;

-- Q3
select e.deptno, dname, empno, ename, job, sal
from emp e, dept d
where e.deptno = d.deptno
order by e.deptno;

select e.deptno, dname, empno, ename, job, sal
from emp e join dept d on(e.deptno = d.deptno)
order by e.deptno;

-- Q4
select e.deptno, d.dname, e.empno, e.ename, e.mgr, e.sal, losal, hisal, grade, e1.empno as mgr_empno, e1.ename as mgr_ename
from emp e, dept d, salgrade s, emp e1
where e.deptno = d.deptno and e.sal between losal and hisal and e.mgr = e1.empno(+)
order by deptno, empno;

select e.deptno, d.dname, e.empno, e.ename, e.mgr, e.sal, losal, hisal, grade, e1.empno as mgr_empno, e1.ename as mgr_ename
from emp e join dept d on(e.deptno = d.deptno) join salgrade s on(sal between losal and hisal) left outer join emp e1 on(e.mgr = e1.empno)
order by deptno, empno;