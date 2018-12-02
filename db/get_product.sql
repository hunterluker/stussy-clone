select *
from products p 
join product_images pi
on p.product_id = pi.product_id
where p.product_id = $1;