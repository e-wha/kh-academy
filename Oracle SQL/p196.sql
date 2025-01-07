select deptno, job, count(*), max(sal), sum(sal), round(avg(sal))
from emp
group by rollup(deptno, job);

select deptno, job, count(*), max(sal), sum(sal), round(avg(sal))
from emp
group by cube(deptno, job);

select ename
from emp
where deptno = 10;

select deptno, job, max(sal)
from emp
group by deptno, job
order by deptno, job;

select *
from (select deptno, job, sal from emp)
pivot(max(sal) for deptno in (10, 20, 30))
order by job;

select deptno,
max(decode(job, 'CLERK', sal)) as "CLERK",
max(decode(job, 'SALESMAN', sal)) as "SALESMAN",
max(decode(job, 'PRESIDENT', sal)) as "PRESIDENT",
max(decode(job, 'MANAGER', sal)) as "MANAGER",
max(decode(job, 'ANALYST', sal)) as "ANALYST"
from emp
group by deptno
order by deptno;

select *
from (select deptno,
max(decode(job, 'CLERK', sal)) as "CLERK",
max(decode(job, 'SALESMAN', sal)) as "SALESMAN",
max(decode(job, 'PRESIDENT', sal)) as "PRESIDENT",
max(decode(job, 'MANAGER', sal)) as "MANAGER",
max(decode(job, 'ANALYST', sal)) as "ANALYST"
from emp
group by deptno
order by deptno)
unpivot(sal for job in (CLERK, SALESMAN, PRESIDENT, MANAGER, ANALYST))
order by deptno, job;


