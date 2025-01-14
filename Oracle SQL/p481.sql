set serveroutput on;

create or replace procedure pro_noparam
is
    v_empno number(4) := 7788;
    v_ename varchar2(10);
begin
    v_ename := 'SCOTT';
    dbms_output.put_line('V_EMPNO : ' || v_empno || ', V_NAME : ' || v_ename);
end;
/

execute pro_noparam;

-- p485
desc user_source;

select *
from user_source
where type = 'PROCEDURE' and name = 'PRO_NOPARAM';


-- p486
drop procedure pro_noparam;


-- p488
create or replace procedure pro_param_in(
    param1 in number,
    param2 number,
    param3 number := 3,
    param4 number default 4
)
is

begin
    dbms_output.put_line('param1 : ' || param1);
    dbms_output.put_line('param2 : ' || param2);
    dbms_output.put_line('param3 : ' || param3);
    dbms_output.put_line('param4 : ' || param4);
end;
/

execute pro_param_in(1, 2);

execute pro_param_in(1, 2, 9, 8);


-- p490

create or replace procedure pro_param_out(
    in_empno in emp.empno%type,
    out_ename out emp.ename%type,
    out_sal out emp.sal%type
)
is
begin
    select ename, sal into out_ename, out_sal
    from emp
    where empno = in_empno;
end pro_param_out;
/

execute pro_param_out(7788);

declare
    v_ename emp.ename%type;
    v_sal emp.sal%type;
begin
    pro_param_out(7839, v_ename, v_sal);
    dbms_output.put_line('V_ENAME : ' || v_ename);
    dbms_output.put_line('V_SAL : ' || v_sal);
end;
/


-- p491
create or replace procedure pro_param_inout(
    inout_no in out number
)
is

begin
    inout_no := inout_no * 2;
end pro_param_inout;
/

declare
    no number;
begin
    no := 5;
    pro_param_inout(no);
    dbms_output.put_line('no : ' || no);
end;
/


-- p492
set serveroutput on;

create or replace procedure pro_err
is
    err_no number;
begin
    err_no := 100;
    dbms_output.put_line('err_no : ' || err_no);
end pro_err;
/

show errors;

show err procedure pro_err;

show err procedure pro_param_inout;

select *
from user_errors
where name = 'PRO_ERR';


-- p497
create or replace function func_aftertax(
    sal in number
)
return number
is
    tax number := 0.05;
begin
    return (round(sal- (sal * tax)));
end func_aftertax;
/

set serveroutput on;

declare
    aftertax number;
begin
    aftertax := func_aftertax(3000);
    dbms_output.put_line('after_tax income : ' || aftertax);
end;
/

select empno, ename, sal, func_aftertax(sal) as aftertax
from emp;

drop function func_aftertax;


-- p501
create or replace package pkg_example
is
    spec_no number := 10;
    function func_aftertax(sal number) return number;
    procedure pro_emp(in_empno in emp.empno%type);
    procedure pro_dept(in_deptno in dept.deptno%type);
end;
/

desc user_source;

select *
from user_source;

select name, type, text
from user_source
where type = 'PACKAGE' and name = 'PKG_EXAMPLE';

desc pkg_example;


create or replace package body pkg_example
is
    body_no number := 10;
    
    function func_aftertax(sal number) return number
    is
        tax number := 0.05;
    begin
        return (round(sal - (sal * tax)));
    end func_aftertax;
    
    procedure pro_emp(in_empno in emp.empno%type)
    is
        out_ename emp.ename%type;
        out_sal emp.sal%type;
    begin
        select ename, sal into out_ename, out_sal
        from emp
        where empno = in_empno;
        
        dbms_output.put_line('ENAME : ' || out_ename);
        dbms_output.put_line('SAL : ' || out_sal);
    end pro_emp;
    
    procedure pro_dept(in_deptno in dept.deptno%type)
    is
        out_dname dept.dname%type;
        out_loc dept.loc%type;
    begin
        select dname, loc into out_dname, out_loc
        from dept
        where deptno = in_deptno;
        
        dbms_output.put_line('DNAME : ' || out_dname);
        dbms_output.put_line('LOC : ' || out_loc);
    end pro_dept;
end;
/


create or replace package pkg_overload
is
    procedure pro_emp(in_empno in emp.empno%type);
    procedure pro_emp(in_ename in emp.ename%type);
end;
/


create or replace package body pkg_overload
is  
    procedure pro_emp(in_empno in emp.empno%type)
    is
        out_ename emp.ename%type;
        out_sal emp.sal%type;
    begin
        select ename, sal into out_ename, out_sal
        from emp
        where empno = in_empno;
        
        dbms_output.put_line('ENAME : ' || out_ename);
        dbms_output.put_line('SAL : ' || out_sal);
    end pro_emp;
    
    procedure pro_emp(in_ename in emp.ename%type)
    is
        out_ename emp.ename%type;
        out_sal emp.sal%type;
    begin
        select ename, sal into out_ename, out_sal
        from emp
        where ename = in_ename;
        
        dbms_output.put_line('ENAME : ' || out_ename);
        dbms_output.put_line('SAL : ' || out_sal);
    end pro_emp;
end;
/

declare

begin
    dbms_output.put_line('--pkg_example.func_after_tax(3000)--');
    dbms_output.put_line('after-tax : ' || pkg_example.func_aftertax(3000));
    
    dbms_output.put_line('--pkg_example.pro_emp(7788)--');
    pkg_example.pro_emp(7788);
    
    dbms_output.put_line('--pkg_example.pro_dept(10)--');
    pkg_example.pro_dept(10);
    
        dbms_output.put_line('--pkg_overload.pro_emp(7788)--');
    pkg_overload.pro_emp(7788);
    
    dbms_output.put_line('--pkg_overload.pro_emp("SCOTT")--');
    pkg_overload.pro_emp('SCOTT');
end;
/

drop package pkg_overload;
drop package body pkg_overload;

-- p510
create table emp_trg
as
select * from emp;

select * from emp_trg;


create or replace trigger trg_emp_nodml_weekend
before
insert or update or delete on emp_trg
begin
    if to_char(sysdate, 'DY') in ('토', '일') then
        if inserting then
            raise_application_error(-20000, '주말 사원정보 추가 불가');
        elsif updating then
            raise_application_error(-20001, '주말 사원정보 수정 불가');
        elsif deleting then
            raise_application_error(-20002, '주말 사원정보 삭제 불가');
        else
            raise_application_error(-20003, '주말 사원정보 변경 불가');
        end if;
    end if;
end;
/



select * from emp_trg
order by empno;

update emp_trg
set sal = 4000
where empno = 7788;


create table emp_trg_log(
    tablename varchar2(10),
    dml_type varchar2(10),
    empno number(4),
    user_name varchar2(30),
    chang_date date
);

create or replace trigger trg_emp_log
after
insert or update or delete on emp_trg
for each row

begin
    if inserting then
        insert into emp_trg_log
        values ('EMP_TRG', 'INSERT', :new.empno,
                SYS_CONTEXT('USERENV', 'SESSION_USER'), sysdate);
                     
    elsif updating then
        insert into emp_trg_log
        values ('EMP_TRG', 'UPDATE', :old.empno,
                SYS_CONTEXT('USERENV', 'SESSION_USER'), sysdate);
                     
    elsif deleting then
        insert into emp_trg_log
        values ('EMP_TRG', 'DELETE', :old.empno,
            SYS_CONTEXT('USERENV', 'SESSION_USER'), sysdate);
    end if;
end;
/

select * from emp_trg;
insert into emp_trg values(9999, 'TestRmp', 'CLERK', 7788, to_date('2018-03-03', 'YYYY-MM-DD'), 1200, null, 20);

select * from emp_trg_log;

update emp_trg
set sal = 1300
where mgr = 7788;

