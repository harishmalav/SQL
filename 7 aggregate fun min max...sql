--  aggregate function
-- distinct => no dupicate values
 -- distinct (continent)
 
 select distinct continent, region from country;
 
 -- aggregation =>to apply some calutations 
 
 select count(population),sum(population),avg(population),
 max(population),min(population) from country;
 
 -- get the total country name & total regions along with avg lifeexpentency
 -- & total population for the countrys who got the independencey after 1947 & before 1998
 
 select  * from country;
 
 select count(name) , count(region) ,IndepYear,avg(lifeexpectancy) ,sum(population) 
 from country where IndepYear > 1947 and IndepYear < 1998;
 
 -- get the total numbers of countrys the unick regions along with total popualation,
 --  heigths lifeexpetency rate with total capital for the country staring letter a and d 
 
 
 select count(name),count(region),sum(population),sum(lifeexpectancy) ,
sum( capital) from country where name like 'A%' or name like 'D%';

--  group by => collect to similar values
select  continent from country group by continent;

-- find out the total countrys & the total population for each idepyear

select indepyear, count(name),sum(population)  from country group by indepyear; 
