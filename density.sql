# again this is from the 'world' database accessible online

# we want to find the countries that have above average 'density'
select name, population/surfacearea as density
from country
where population/SurfaceArea > (select avg(population/surfacearea) from country)
order by density desc;
