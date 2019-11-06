# Just an example of a simple correlated query

## Retrieve the first and last names of employees that work at the same office as the President (Diane)
select firstName, lastName
from employees
where officecode = (select officecode
	from employees
	where firstName = 'Diane' and lastName = 'Murphy');
