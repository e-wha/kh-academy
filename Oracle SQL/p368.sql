select * from tabs;

create table table_notnull2(
    login_id varchar2(20) constraint tablenn2_loginid_nn not null,
    login_pw varchar2(20) constraint tablenn2_loginpw_nn not null,
    tel varchar(20)
);

desc user_constraints;

select owner, constraint_name, constraint_type, table_name
from user_constraints
where table_name = 'TABLE_NOTNULL2';

alter table table_notnull2
modify(tel constraint tablenn2_tel_nn not null);

alter table table_notnull2
rename constraint tablenn2_tel_nn to tblnn2_tel_nn;

desc table_notnull2;


create table table_unique(
    login_id varchar2(20) unique,
    login_pw varchar2(20) not null,
    tel varchar(20)
);

insert into table_unique(login_id, login_pw, tel) values ('ID01', 'PW01', '010-1234-5678');
insert into table_unique(login_id, login_pw, tel) values ('ID02', 'PW02', '010-1234-5678');
insert into table_unique(login_id, login_pw, tel) values (null, 'PW03', '010-1234-5678');

select * from table_unique;

alter
table table_unique
modify(login_id not null);

delete 
from table_unique
where login_id is null;


create table table_pk(
    login_id varchar2(20) primary key,
    login_pw varchar2(20) not null,
    tel varchar(20)
);

select owner, constraint_name, constraint_type, table_name
from user_constraints
where table_name = 'TABLE_PK';

desc user_indexes;

select index_name, index_type, table_name
from user_indexes
where table_name = 'TABLE_PK';

insert into table_pk(login_id, login_pw, tel) values ('ID01', 'PW01', '010-1234-5678');
insert into table_pk(login_id, login_pw, tel) values ('ID02', 'PW02', '010-1234-5678');
insert into table_pk(login_id, login_pw, tel) values (null, 'PW01', '010-1234-5678');
insert into table_pk(login_pw, tel) values ('PW02', '010-1234-5678');


create table table_cons_name1(
    login_id varchar2(20) constraint tbl_cons_name_pk primary key,
    login_pw varchar2(20) not null,
    tel varchar(20)
);

select owner, constraint_name, constraint_type, table_name
from user_constraints
where table_name = 'TABLE_CONS_NAME1';

create table table_cons_name2(
    login_id varchar2(20),
    login_pw varchar2(20) not null,
    tel varchar(20),
    primary key (login_id),
    constraint tbl_cons_name_unique unique(login_pw)
);

select owner, constraint_name, constraint_type, table_name
from user_constraints
where table_name = 'TABLE_CONS_NAME2';

desc user_constraints;

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
  grade number,
  losal number,
  hisal number
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


select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('DEPT', 'EMP');


select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('DEPT', 'EMP');

create table emp_fk
as 
select * from emp;

select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('EMP_FK');

desc emp_fk;


alter
table emp_fk
modify(empno constraint tbl_empno_pk primary key);

alter
table emp_fk
modify(deptno constraint empfk_deptno_fk references dept (deptno));

select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('EMP_FK');

insert into emp values(7784, 'CLARK', 'MANAGER', 7839, '1981/06/09', 2450, null, 50);

alter
table emp
drop constraint fk_deptno;

drop table emp_fk;
delete from dept;

select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('DEPT', 'EMP');

select * from dept;

delete from dept
where deptno = 10;

drop table emp;
drop table dept;

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
CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES dept(deptno) ON DELETE CASCADE);

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

rollback;
commit;

