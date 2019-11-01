CREATE FUNCTION numFlavours(coneNumber INT)
RETURNS INT
DETERMINISTIC
RETURN (Select DISTINCT count(scoopid) as scoop_count
from scoopsincone
where coneid = coneNumber);

## Function - Used to return the number of icecream scoops from a cone that was ordered by a customer ##
