select * from dept1;

update dept1
set deptno = 50 , dname = 'NETWORK', loc = 'SEOUL'
where deptno = 40;

update dept1
set loc = 'BUSAN'
where deptno = 20;

create table dept_tcl
as
select * from dept1;

select * from dept_tcl;

update dept_tcl
set loc = 'CHICAGO'
where deptno = 30;

rollback;

delete
from dept_tcl
where deptno = 50;