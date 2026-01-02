use world;
-- round off
select LifeExpectancy ,round (LifeExpectancy) from country;
select 56.7 ,round(56);
select 456.68 ,round(456.68,-2);

-- truncate 
select 456.68,round(456.68,1) ,truncate(456.68,1);

select mod(10,3),ceil(4.00003),floor(2.6666),pow(2,4);

-- date function
select now(),current_time(),current_date(),current_timestamp();

-- add date function => by default date add(month,year,time)
select now(),adddate(now(),2) ,adddate(now(),interval -2 month);

select now(),year(now());

select now(),extract(month from now());
select now(),extract(week from now());

-- date format=>extract but with a string(message)
select now(),extract(week from now()),date_format(now(),'year is %m');