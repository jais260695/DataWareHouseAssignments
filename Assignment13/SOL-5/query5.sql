SELECT DD.calyear, DD.calquarter, CVD.name, sum(I.ExtCost) as sum_extcost, count(*) as inv_count
FROM inventory_fact I,date_dim DD,cust_vendor_dim CVD
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND (DD.calyear=2011 OR DD.calyear=2012)
GROUP BY CVD.name, ROLLUP(DD.calyear, DD.calquarter);
