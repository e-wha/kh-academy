select empno, ename, empno + '500'
from emp
where ename = 'SCOTT';

select empno, ename, empno + 'ABCD'
from emp
where ename = 'SCOTT';

desc emp;

select to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') as "현재날짜시간"
from dual;

select sysdate, to_char(sysdate, 'MM'), to_char(sysdate, 'DD'), to_char(sysdate, 'DY', 'NLS_DATE_LANGUAGE=KOREAN'),
to_char(sysdate, 'DY', 'NLS_DATE_LANGUAGE=JAPANESE'), to_char(sysdate, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') 
from dual;

select sal, to_char(sal, '$999,999'), to_char(sal, 'L999,999'), to_char(sal, '999,999.00'), to_char(sal, '000,999,999.00'),
to_char(sal, '999,999,00')
from emp;

select *
from emp
where hiredate > to_date('1981/06/01', 'YYYY/MM/DD');

