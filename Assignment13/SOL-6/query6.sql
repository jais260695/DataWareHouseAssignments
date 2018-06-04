SELECT DD.calmonth, CVD.addrcatcode1, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity 
from inventory_fact I, date_dim DD, cust_vendor_dim CVD 
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND DD.calyear=2011 
group by DD.calmonth,CVD.addrcatcode1
UNION
SELECT DD.calmonth, NULL, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity 
from inventory_fact I, date_dim DD, cust_vendor_dim CVD 
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND DD.calyear=2011 
group by DD.calmonth
UNION
SELECT NULL, CVD.addrcatcode1, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity 
from inventory_fact I, date_dim DD, cust_vendor_dim CVD 
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND DD.calyear=2011 
group by CVD.addrcatcode1
UNION
SELECT NULL, NULL, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity 
from inventory_fact I, date_dim DD, cust_vendor_dim CVD 
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND DD.calyear=2011;