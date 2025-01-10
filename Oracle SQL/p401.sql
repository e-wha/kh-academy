show user;
ALTER SESSION SET "_ORACLE_SCRIPT" = true;

create user orclstudy
identified by 1111;

drop user orclstudy cascade;

select * from dba_objects
where owner in ('SCOTT');

drop user scott cascade;

create user scott identified by 1111;
grant dba to scott;

create table temp(
    col1 varchar(20),
    col2 varchar(20)
);

insert into temp values('col1', 'col2');
insert into temp values('col11', 'col22');

desc temp;
select * from temp;

grant select
on temp to orclstudy;

grant select, insert
on temp to orclstudy;

revoke select, insert
on temp from orclstudy;


create role rolestudy;

drop role rolestudy;

grant connect, resource
to rolestudy;

grant rolestudy to orclstudy;

desc user_sys_privs;
select * from user_sys_privs;


select * from dba_role_privs
where GRANTEE = 'SCOTT';

select * from dba_role_privs
where GRANTEE = 'ORCLSTUDY';

select * from dba_sys_privs
where GRANTEE = 'CONNECT';

select * from dba_sys_privs
where GRANTEE = 'RESOURCE';

select * from dba_sys_privs
where GRANTEE = 'DBA';

show user;