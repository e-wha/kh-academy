ALTER SESSION SET "_ORACLE_SCRIPT" = true;

create user orclstudy
identified by 1111;

show user;

grant create session to orclstudy;

desc all_users;

select * from all_users
where username in ('SYSYEM', 'SCOTT', 'ORCLSTUDY');

desc dba_users;

select * from dba_objects;

select * from dba_objects
where owner in ('SYSYEM', 'SCOTT', 'ORCLSTUDY');

show user;

alter user orclstudy
identified by 2222;

