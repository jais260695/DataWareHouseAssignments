create materialized view SalesByVendorDateKeyMV2012 build immediate
refresh complete on demand enable query rewrite as select I.custvendorkey, DD.datekey,
sum(I.extcost) as sum_extcost, sum(I.quantity) as sum_quantity, count(*) as inventory_count
from Inventory_fact I, Date_dim DD
where I.datekey=DD.datekey AND I.transtypekey=5 AND DD.calyear=2012
group by I.custvendorkey, DD.datekey;
