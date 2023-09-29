--Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
select "Marital Status", round(avg(age)) as "Rata-Rata Umur"
from "Case Study - Customer.csv" cscc 
group by "Marital Status";

--Berapa rata-rata umur customer jika dilihat dari gender nya ?
select 
case 
	when gender = 1 then 'Male'
	else 'Female'
end as "Gender"
,round(avg(age)) as "Rata-Rata Umur"
from "Case Study - Customer.csv" cscc 
group by "Gender"; 

--Tentukan nama store dengan total quantity terbanyak!
select s.storename "Store Name", sum(t.qty) "Total Quantity"
from case_study s  
join "Case Study - Transaction.csv" t on s.storeid = t.storeid
group by "Store Name"
order by "Total Quantity" desc
limit 1;

--Tentukan nama produk terlaris dengan total amount terbanyak!
select p."Product Name", sum(t.totalamount) "Total Amount"
from "Case Study - Product.csv" p
join "Case Study - Transaction.csv" t on p.productid = t.productid 
group by "Product Name"
order by "Total Amount" desc
limit 1;