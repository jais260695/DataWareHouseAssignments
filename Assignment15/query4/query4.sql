select calquarter, zip, name, sum(sum_extcost), sum(inventory_count) 
from( select DD.calquarter, CVD.zip, CVD.name, MV_11.sum_extcost as sum_extcost,
   MV_11.inventory_count as inventory_count from SalesByVendorDateKeyMV2011 MV_11,
   cust_vendor_dim CVD, date_dim DD UNION select DD.calquarter, CVD.zip, CVD.name,
   MV_12.sum_extcost as sum_extcost,
   MV_12.inventory_count as inventory_count from SalesByVendorDateKeyMV2012 MV_12,
   cust_vendor_dim CVD, date_dim DD  )
group by cube(calquarter, zip, name)
order by calquarter, zip, name;
