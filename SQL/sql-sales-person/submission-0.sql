-- Write your query below
select sp.name
from sales_person as sp
where sp.sales_id not in (
    select o.sales_id
    from orders as o
    join company as c on o.com_id = c.com_id
    where c.name = 'CRIMSON'
) 