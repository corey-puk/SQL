select name, population from country
# less than or equal to the population of Indonesia
where population <= (select population from country where name = 'Indonesia')
# greater than or equal to Germany
and population >= (select population from country where name = 'Germany')
order by population desc;
