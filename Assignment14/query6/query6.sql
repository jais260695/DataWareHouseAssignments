select IMD.seconditemid, sum(I.extcost) as sum_extcost, ratio_to_report(sum(I.extcost)) OVER() as ratio_sumextcost
from inventory_fact I, item_master_dim IMD
where I.itemmasterkey=IMD.itemmasterkey AND I.transtypekey=1
GROUP By IMD.seconditemid
ORDER BY SUM(I.extcost) DESC;
