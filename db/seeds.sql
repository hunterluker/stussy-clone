create table products
(
    id serial primary key,
    product_id integer,
    price integer,
    title varchar(100),
    description text,
    gender text,
    category text
)

drop table if exists product_images;

create table product_images (
    id serial primary key,
    product_id integer,
    image_num text,
    image text
)

insert into products 
( product_id, price, title, description, gender, category)
values(1, 45.00, 'Stock Internation L/SL Tee', 'Regular fit long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'male', 'tees');

insert into product_images
(product_id, image_spot, image)
values(1, 'image1', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_BLAC_1.jpg'),
      (1, 'image2', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_OCEA_1.jpg'),
      (1, 'image3', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_WHIT_1.jpg');


select *
from products p 
join product_images pi
on p.product_id = pi.product_id;