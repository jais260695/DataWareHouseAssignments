select DD.calyear,IMD.seconditemid, sum(I.extcost) as sum_extcost, ratio_to_report(sum(I.extcost)) OVER(partition by DD.calyear) as ratio_sumextcost
from inventory_fact I, item_master_dim IMD, date_dim DD
where I.itemmasterkey=IMD.itemmasterkey AND DD.datekey=I.datekey AND I.transtypekey=1
GROUP By DD.calyear,IMD.seconditemid
ORDER BY DD.calyear,SUM(I.extcost) DESC;