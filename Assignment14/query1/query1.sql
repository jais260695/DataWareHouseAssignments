select CVD.name, sum(I.extcost) as sum_extcost, RANK() OVER(ORDER BY SUM(I.extcost) DESC) AS rank_of_customers 
from INVENTORY_FACT I, CUST_VENDOR_DIM CVD 
where I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5
GROUP BY CVD.name;