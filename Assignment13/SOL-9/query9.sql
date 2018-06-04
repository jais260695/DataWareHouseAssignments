SELECT DD.calmonth, CVD.addrcatcode1, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity, grouping_id(DD.calmonth,CVD.addrcatcode1) as grp_num
from inventory_fact I, date_dim DD, cust_vendor_dim CVD 
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND DD.calyear=2011 
group by cube(DD.calmonth,CVD.addrcatcode1);