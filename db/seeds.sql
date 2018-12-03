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
    main_image text,
    image1,
    image2,
    image3
)


-- MALE
insert into products 
( product_id, price, title, description, gender, category)
values(1, 45.00, 'Stock International L/SL Tee', 'Regular fit long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'male', 'tees');


insert into products 
( product_id, price, title, description, gender, category)
values(2, 40.00, 'Surf Skull Tee', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'male', 'tees');


insert into products 
( product_id, price, title, description, gender, category)
values(3, 110.00, 'Polar Fleece Mock Neck', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'male', 'jackets');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(1, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_OCEA_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_WHIT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(2, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_NATL_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_NATL_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_RASP_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(3, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/small_image/470x500/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_ZEBR_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/small_image/470x500/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_ZEBR_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_BERR_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_BLAC_1.jpg');



-- FEMALE
insert into products 
( product_id, price, title, description, gender, category)
values(4, 38.00, 'W Stock International L/SL Tee', 'Womens long long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'female', 'tees');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(4, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_GHEA_1.jpg');

select *
from products p 
join product_images pi
on p.product_id = pi.product_id;