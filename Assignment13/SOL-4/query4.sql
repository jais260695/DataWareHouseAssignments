SELECT TTD.transdescription,CD.companyname, BPD.bpname,sum(I.ExtCost) as sum_extcost, count(*) as inv_count 
From inventory_fact I, trans_type_dim TTD,branch_plant_dim BPD, company_dim CD 
WHERE I.branchplantkey = BPD.branchplantkey AND BPD.companykey = CD.companykey AND I.transtypekey = TTD.transtypekey
group by grouping sets( (TTD.transdescription,CD.companyname, BPD.bpname),(TTD.transdescription, CD.companyname),(TTD.transdescription) ,() ) ;

