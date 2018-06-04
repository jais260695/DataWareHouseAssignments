select CVD.name, count(*) as count_trans, RANK() OVER(ORDER BY count(*) DESC) AS rank_of_customers, DENSE_RANK() OVER(ORDER BY count(*) DESC) AS denserank_of_customers 
from INVENTORY_FACT I, CUST_VENDOR_DIM CVD 
where I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5
GROUP BY CVD.name;