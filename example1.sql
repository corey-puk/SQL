select c.customerid, count(*)
from customerpurchases as c, conesinpurchase as cp
where c.purchaseid = cp.purchaseid
group by c.customerid
order by count(*) DESC;
