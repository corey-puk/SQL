select C.email, P.store, count(cp.purchaseId) as Number_of_purchases
from customerpurchases cp join customer c on cp.customerId=c.id join purchase p on cp.purchaseId=p.id
group by p.store, c.id
order by email;