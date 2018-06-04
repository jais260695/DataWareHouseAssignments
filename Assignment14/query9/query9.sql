select BPD_U.bpName,BPD_U.companykey,BPD_U.carryingcost, BPD_U.cumm_dist
from (select BPD.bpName,BPD.companykey,BPD.carryingcost,cume_dist() OVER (order by BPD.carryingcost desc) As cumm_dist FROM branch_plant_dim BPD ) BPD_U
where BPD_U.cumm_dist <= 0.15;
