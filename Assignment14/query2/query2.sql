select CVD.state, CVD.name, sum(I.extcost) sum_extcost, rank() over(partition by CVD.state order by sum(I.extcost) desc) as rank_of_customers
from INVENTORY_FACT I, CUST_VENDOR_DIM CVD 
where I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5
GROUP BY CVD.state,CVD.name
ORDER by CVD.state;