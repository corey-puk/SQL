select @maxpop := max(population)
from country; 

## you could then use the above as follows

select name, population
from country
where population = maxpop;
