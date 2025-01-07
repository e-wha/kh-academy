select sal
from emp;

select sum(sal), count(sal), max(sal), min(sal), avg(sal)
from emp;

select max(hiredate) as "신입", min(hiredate) as "고참"
from emp;

select distinct deptno
from emp;

select deptno, round(avg(sal)) as "평균연봉"
from emp
group by deptno;

select deptno, job, avg(sal)
from emp
group by deptno, job
order by deptno, job asc;

select deptno, job, avg(sal) as "평균연봉"
from emp
group by deptno, job
having avg(sal) >= 2000
order by deptno, job;

select *
from emp;

select deptno, sum(sal) as "급여 총액", round(avg(sal)) as "평균 급여"
from emp
group by deptno
order by deptno;

select deptno, count(ename) as "사원 수", count(comm) as "커미션 사원 수"
from emp
group by deptno
order by deptno;

select deptno, round(avg(sal)) as "평균 급여"
from emp
group by deptno
having round(avg(sal)) >= 2000
order by deptno;

select deptno, min(sal) as "최소 급여", max(sal) as "최대 급여"
from emp
group by deptno
having max(sal) >= 2900
order by deptno;