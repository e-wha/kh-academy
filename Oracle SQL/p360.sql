select owner, table_name, constraint_name, constraint_type
from user_constraints;

select * from tabs;

drop table emp;
drop table dept;
drop table salgrade;

create table dept(
deptno number(2) primary key,
dname varchar2(20) not null,
loc varchar2(20));

create table emp(
empno number(4) primary key,
ename varchar2(10) not null,
job varchar2(20) not null,
mgr number(4),
hiredate date,
sal number(8),
comm number(8),
deptno number(2),
CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES dept(deptno));


create table salgrade(
  grade int,
  losal int,
  hisal int
);


insert into dept values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept values(20, 'RESEARCH', 'DALLAS');
insert into dept values(30, 'SALES', 'CHICAGO');
insert into dept values(40, 'OPERATING', 'BOSTON');


insert into emp values(7369, 'SMITH', 'CLERK', 7902, '1980/12/17', 800, null, 20);
insert into emp values(7499, 'ALLEN', 'SALESMAN', 7698, '1981/02/20', 1600, 300, 30);
insert into emp values(7521, 'WARD', 'SALESMAN', 7698, '1981/02/22', 1250, 500, 30);
insert into emp values(7566, 'JONES', 'MANAGER', 7839, '1981/04/02', 2975, null, 20);
insert into emp values(7654, 'MARTIN', 'SALESMAN', 7698, '1981/09/28', 1250, 1400, 30);
insert into emp values(7698, 'BLAKE', 'MANAGER', 7839, '1981/05/01', 2850, null, 30);
insert into emp values(7788, 'SCOTT', 'ANALYST', 7566, '1987/04/19', 3000, null, 20);
insert into emp values(7839, 'KING', 'PRESIDENT', null, '1981/11/17', 5000, null, 10);
insert into emp values(7844, 'TURNER', 'SALESMAN', 7698, '1981/09/08', 1500, 0, 30);
insert into emp values(7876, 'ADAMS', 'CLERK', 7788, '1987/05/23', 1100, null, 20);
insert into emp values(7900, 'JAMES', 'CLERK', 7698, '1981/12/03', 950, null, 30);
insert into emp values(7902, 'FORD', 'ANALYST', 7566, '1981/12/03', 3000, null, 20);
insert into emp values(7934, 'MILLER', 'CLERK', 7782, '1982/01/23', 1300, null, 10);
insert into emp values(7782, 'CLARK', 'MANAGER', 7839, '1981/06/09', 2450, null, 10);

select * from emp;

insert into salgrade values (1, 700, 1200);
insert into salgrade values (2, 1201, 1400);
insert into salgrade values (3, 1401, 2000);
insert into salgrade values (4, 2001, 3000);
insert into salgrade values (5, 3001, 9999);

drop table emp;
drop table dept;

create table table_notnull(
    login_id varchar2(20) not null,
    login_pwd varchar2(20) not null,
    tel varchar2(20)
);

insert into table_notnull values('test_id_01', '1111', '010-1234-5678');

insert into table_notnull(login_id, login_pwd) values('test_id_02', '1111');

select * from table_notnull;

delete
from table_notnull
where tel is null;

alter
table table_notnull
modify (tel not null);

alter
table table_notnull
modify (tel constraint tb_not_null_nn);