CREATE FUNCTION isNutFree(coneNumber INT)
returns BOOLEAN
BEGIN
Select cone.name, scoop.name
from cone,scoop
where cone.id = scoop.id
If scoop.name != 'Macadamia' or scoop.name != 'Coconut' and 
	if cone.conetype != 'Waffle' THEN
    RETURN False
ELSE RETURN True;
