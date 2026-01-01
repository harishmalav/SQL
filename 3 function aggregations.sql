use world;
select * from country;

select name ,substr(name,2) from country;

select name,continent, substr(name,1,1),substr(continent,1,1) from country where 
substr(name,1,1)=substr(continent,1,1);

select name,continent,left(name,1) ,left(continent,1) from country 
where left(name,1) = left(continent,1);

select name,population from country where name like 'alg%' ;
select name,population from country where substr(name,1)='alg';

select name,instr(name,'e') from country;

select name,char_length(name) from country;

select char_length('     harish ');
select trim('     harish ');

select name ,trim(both 'a' from (trim(both 'A' from name))) from country;

-- lpad & rpad
-- when we want to define a COLUMN with fixed size
select name,population ,rpad(population,9,'#') from country;  