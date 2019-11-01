CREATE FUNCTION numFlavours(coneNumber INT)
RETURNS INT
DETERMINISTIC
RETURN (Select DISTINCT count(scoopid) as scoop_count
from scoopsincone
where coneid = coneNumber);

