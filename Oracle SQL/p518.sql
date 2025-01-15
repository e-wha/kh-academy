select trigger_name, trigger_type, triggering_event, table_name, status
from user_triggers;

-- Q1
set serveroutput on;

create or replace procedure pro_dept_in(
    in_deptno in dept.deptno%type,
    out_deptno out dept.deptno%type,
    out_dname out dept.dname%type,
    out_loc out dept.loc%type
)
is
begin
    select deptno, dname, loc into out_deptno, out_dname, out_loc
    from dept
    where deptno = in_deptno;
end pro_dept_in;
/

declare
    v_deptno dept.deptno%type;
    v_dname dept.dname%type;
    v_loc dept.loc%type;
begin
    pro_dept_in(10, v_deptno, v_dname, v_loc);
    dbms_output.put_line('DEPTNO : ' || v_deptno);
    dbms_output.put_line('DNAME : ' || v_dname);
    dbms_output.put_line('LOC : ' || v_loc);
end;
/


-- Q2
set serveroutput on;

create or replace function func_date_kor(
    in_hiredate in emp.hiredate%type
)
return varchar2
is 
    out_hiredate varchar2(20) := to_char(in_hiredate, 'YYYY"년"MM"월"DD"일"');
begin
    return out_hiredate;
end func_date_kor;
/

select ename, func_date_kor(hiredate) as hiredate
from emp
where empno = 7369;
/

-- Q3
set serveroutput on;

create table dept_trg
as
select * from dept;

create table dept_trg_log(
    tablename varchar2(10),
    dml_type varchar2(10),
    deptno number(2),
    user_name varchar2(30),
    change_date date
)
/

create or replace trigger trg_dept_log
after
insert or update or delete on dept_trg
for each row

begin
    
    if inserting then
        insert into dept_trg_log
        values ('DEPT_TRG', 'INSERT', :new.deptno, SYS_CONTEXT('USERENV', 'SESSION_USER'), sysdate);
    elsif updating then
        insert into dept_trg_log
        values ('DEPT_TRG', 'UPDATE', :old.deptno, SYS_CONTEXT('USERENV', 'SESSION_USER'), sysdate);
    elsif deleting then
        insert into dept_trg_log
        values ('DEPT_TRG', 'DELETE', :old.deptno, SYS_CONTEXT('USERENV', 'SESSION_USER'), sysdate);
    end if;
end;
/

insert into dept_trg values(50, 'ANALYST', 'BUSAN');

update dept_trg
set deptno = 60
where deptno = 50;

delete
from dept_trg
where deptno = 60;

/
select * from dept_trg;
select * from dept_trg_log;