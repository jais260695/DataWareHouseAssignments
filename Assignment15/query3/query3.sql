select DD.calmonth, CVD.addrcatcode1, sum(MV.sum_extcost), sum(MV.sum_quantity )
from SalesByVendorDateKeyMV2011 MV, cust_vendor_dim CVD, date_dim DD
where MV.custvendorkey=CVD.custvendorkey AND MV.datekey=DD.datekey
group by CUBE(DD.calmonth,CVD.addrcatcode1)
order by DD.calmonth,CVD.addrcatcode1;