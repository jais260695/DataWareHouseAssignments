select BPD.bpName,BPD.companykey,BPD.carryingcost, rank() OVER (order by BPD.carryingcost) as rank_branchplant, percent_rank() OVER (order by BPD.carryingcost) As percent_rank_branchplant,
cume_dist() OVER (order by BPD.carryingcost) As cumm_dist FROM branch_plant_dim BPD;
