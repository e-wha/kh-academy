select deptno, trunc(avg(sal)) as avg_sal, max(sal) as max_sal, min(sal) as min_sal, count(ename) as cnt
from emp
group by deptno
order by deptno desc;

select job, count(*)
from emp
group by job
having count(*) >= 3;

select *
from emp;

select to_char(hiredate, 'YYYY') as hire_year, deptno, count(*) as cnt
from emp
group by to_char(hiredate, 'YYYY'), deptno
order by to_char(hiredate, 'YYYY') desc;

select nvl2(comm, 'O', 'X') as exist_comm, count(*) as cnt
from emp
group by nvl2(comm, 'O', 'X')
order by nvl2(comm, 'O', 'X') desc;

select deptno, to_char(hiredate, 'YYYY') as hire_year, count(*) as cnt, max(sal) as max_sal, sum(sal) as sum_sal, avg(sal) as avg_sal
from emp
group by rollup(deptno, to_char(hiredate, 'YYYY'));