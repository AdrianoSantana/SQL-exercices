select 
    c.name
from customers c
inner join 
    legal_person as lp on lp.id_customers = c.id