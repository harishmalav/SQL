use world;
select * from city;

describe city;

-- join

select cy.id,cy.name,cy.CountryCode,cnt.code ,cnt.continent from city as cy join country as cnt 
where cy.CountryCode=cnt.Code; 

-- find city name population the country name along with govt form for each city

select cy.population,cy.name ,cnt.name ,cnt.GovernmentForm from city as cy join 
country as cnt where cy.CountryCode=cnt.Code;

-- get the county name, population& the langauage spoken with the % of each language

select cnt.name,cnt.population,cnl.Language,cnl.Percentage from country as cnt join 
countrylanguage as cnl where cnt.Code=cnl.CountryCode;

 