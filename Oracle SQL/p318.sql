select * from tabs;

select * from emp1;

delete
from emp1
where empno = 7934;

alter 
table emp1
add hp varchar(20);

alter
table emp1
add tel varchar2(20);

alter 
table emp1
rename column hp to data;

desc emp1;

alter
table emp1
modify empno number(5);

alter 
table emp1
drop column data;

rollback;

select * from tabs;

rename chap10hw_emp to emp2;
rename chap10hw_dept to dept2;
rename chap10hw_salgrade to salgrade2;

select * from emp1;

truncate table emp1;

-- Q1
create table emp_hw
as 
select * from emp where 1 <> 1;

desc emp;
desc emp_hw;

-- Q2
alter
table emp_hw
add bigo varchar(20);

-- Q3
alter
table emp_hw
modify bigo varchar(30);

-- Q4
alter
table emp_hw
rename column bigo to remark;

-- Q5
insert into emp_hw (empno, ename, job, mgr, hiredate, sal, comm, deptno, remark)
    select empno, ename, job, mgr, hiredate, sal, comm, deptno, null
    from emp;
    
select * from emp_hw;
-- Q6
drop table emp_hw;