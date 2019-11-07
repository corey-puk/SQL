
# This query asks to list all ordernumbers with Vintage cars but without Classic cars. To do so requires a correlated sub-query
# using NOT IN. This is due to the fact that any order may contain several product lines. We only want to return ordernumbers
# that have never had Classic cars in them.
# If we used a query like (where productline='Vintage Cars' and where productline != 'Classic Cars') this would return ordernumbers
# that have contained orders or Classic Cars. Thus, it is incorrect.

select distinct(ordernumber)
from  products p join orderdetails o on p.productcode=o.productcode
where productline='Vintage Cars' and ordernumber not in (
select distinct(ordernumber)
from orderdetails join products using (productcode)
where productline = 'Classic Cars');
