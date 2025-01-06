select empno, ename, substr(hiredate, 1, 2) as year, substr(hiredate, 4, 2) as month
from emp;

select empno, ename, substr(hiredate, 1, 2) as year, substr(hiredate, 4, 2) as month
from emp
where substr(hiredate, 4, 2) = '09';

