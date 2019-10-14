@C:\app\scott\product\12.2.0\dbhome_1\rdbms\admin\proftab.sql

select table_name from user_tables where table_name like '%prof%';

select * from plsql_profiler_runs;
select * from PLSQL_PROFILER_DATA;
select * from PLSQL_PROFILER_UNITS;
--hgjhghjghjghjg
create or replace procedure proc_c
as
lv_avg_sal number;
begin
for i in 1..50 loop
select avg(sal) into lv_avg_sal from emp;
end loop;
end;

create or replace procedure proc_b
as
lv_date date;
begin
for i in 1..50 loop
proc_c;
select sysdate into lv_date from dual;
end loop;
end;

create or replace procedure proc_a
as
lv_count number;
begin
select count(*) into lv_count from user_tables,all_objects;
for i in 1..50 loop
proc_b;
end loop;
end;

exec dbms_profiler.start_profiler('run1');

exec proc_a;

exec dbms_profiler.stop_profiler();

select * from tab;
