# A natural join is simply taking all columns of the same name from n relations (where n = 1, 2, 3.... i) and joining them together
# you can try this on the world database 

use world
select * 
from city natural join country;


# notice how this doesn't produce anything? This is because none of the columns share similar names
