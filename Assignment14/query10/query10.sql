select distinct I.extcost, cume_dist() over(order by I.extcost) as cumm_dist_extcost
from inventory_fact I, cust_vendor_dim CVD
where I.custvendorkey=CVD.custvendorkey AND CVD.state='CO'
order by I.extcost;