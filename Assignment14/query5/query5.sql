select CVD.zip, DD.calyear, DD.calmonth, sum(I.extcost) as sum_extcost, 
sum(sum(I.extcost)) over(partition by CVD.zip, DD.calyear ORDER BY CVD.zip, DD.calyear, DD.calmonth rows unbounded preceding) as cumm_sum
from INVENTORY_FACT I, CUST_VENDOR_DIM CVD , DATE_DIM DD
where I.custvendorkey=CVD.custvendorkey AND I.datekey=DD.datekey AND I.transtypekey=5
group by CVD.zip,  DD.calyear, DD. calmonth;