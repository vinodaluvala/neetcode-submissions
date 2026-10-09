-- Write your query below
select s.seller_name 
from seller as s
left join orders as o
on s.seller_id = o.seller_id
and extract(YEAR from o.sale_date) = 2020
where o.seller_id is null 
order by s.seller_name; 