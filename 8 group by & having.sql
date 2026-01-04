-- group by & where condition	
use world;
select continent ,count(name) from country where indepyear>1950 group by continent;


-- having 
select continent,count(	name) from country group by continent having count(name)>30;

select continent,sum(population) from country group by continent having sum(population)>100;

select * from country;

select indepyear,count(name) from country where indepyear>1930 group by indepyear having count(name)>2;  

-- Q1 you ned to get govt form & the total no of country for each govt form wher total no of country >20
-- Q2 where the coutry should capital >30
-- Q3 get the  no of countrys ,regions & total populatuon where lifeex should be >38 & the popu each cotinent >3lakh

select governmentform ,count(name) from country group by governmentform having count(name)>20;

select governmentform ,count(name) from country where capital>30 group by governmentform	 ;

select continent,count( name),count(region),sum(population) 
from country where lifeexpectancy > 38
 group by continent having sum(population)>300000; 