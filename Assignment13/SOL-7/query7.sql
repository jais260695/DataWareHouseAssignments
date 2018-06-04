SELECT CD.companyname,BPD.bpname, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity  
FROM inventory_fact I,branch_plant_dim BPD,company_dim CD
WHERE I.branchplantkey = BPD.branchplantkey AND BPD.companykey = CD.companykey AND I.transtypekey = 2
GROUP BY CD.companyname,BPD.bpname
UNION
SELECT CD.companyname,NULL, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity  
FROM inventory_fact I,branch_plant_dim BPD,company_dim CD
WHERE I.branchplantkey = BPD.branchplantkey AND BPD.companykey = CD.companykey AND I.transtypekey = 2
GROUP BY CD.companyname
UNION
SELECT NULL,NULL, sum(I.ExtCost) as sum_extcost, sum(I.quantity) as quantity  
FROM inventory_fact I,branch_plant_dim BPD,company_dim CD
WHERE I.branchplantkey = BPD.branchplantkey AND BPD.companykey = CD.companykey AND I.transtypekey = 2;