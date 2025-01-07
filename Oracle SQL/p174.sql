select empno, RPAD(substr(empno, 1, 2), 4, '*') as masking_empno, ename, RPAD(substr(ename, 1, 1), 5, '*') as masking_ename
from emp
where length(ename) >= 5 and length(ename) < 6;

select empno, ename, sal, trunc(sal / 21.5, 2) as day_pay, round(sal / 21.5 / 8, 1) as time_pay 
from emp
order by empno asc;

select empno, ename, hiredate, TO_DATE(ADD_MONTHS(hiredate, 3), 'YYYY-MM-DD') as r_job, nvl(to_char(comm), 'N/A') as comm
from emp
order by empno asc;

select *
from emp;

select empno, ename, mgr, 
case
when mgr is null then '0000'
when trunc(mgr / 100) = 75 then '5555'
when trunc(mgr / 100) = 76 then '6666'
when trunc(mgr / 100) = 77 then '7777'
when trunc(mgr / 100) = 78 then '8888'
else to_char(mgr)
end as chg_mgr
from emp
order by empno asc;
