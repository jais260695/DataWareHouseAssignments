
SELECT DD.calquarter, CVD.zip,CVD.name, sum(I.ExtCost) as sum_extcost, count(*) as inv_count 
From inventory_fact I, date_dim DD, cust_vendor_dim CVD 
WHERE I.datekey=DD.datekey AND I.custvendorkey=CVD.custvendorkey AND I.transtypekey=5 AND (DD.calyear=2011 OR DD.calyear=2012)
group by grouping sets( (DD.calquarter,CVD.zip,CVD.name),(DD.calquarter,CVD.zip),(DD.calquarter,CVD.name) , (CVD.name,CVD.zip) ,DD.calquarter,CVD.zip,CVD.name,() ) ;
