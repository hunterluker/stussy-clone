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
    image1 text,
    image2 text,
    image3 text
)


-- MALE
insert into products 
( product_id, price, title, description, gender, category)
values(1, 45.00, 'Stock International L/SL Tee', 'Regular fit long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');


insert into products 
( product_id, price, title, description, gender, category)
values(2, 40.00, 'Surf Skull Tee', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');


insert into products 
( product_id, price, title, description, gender, category)
values(3, 110.00, 'Polar Fleece Mock Neck', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'mens', 'jackets');


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
values(4, 38.00, 'W Stock International L/SL Tee', 'Womens long long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'womens', 'tees');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(4, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_GHEA_1.jpg');

insert into products 
( product_id, price, title, description, gender, category)
values(5, 60.00, 'Lucile stripe l/sl mock neck', 'Womens long long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'womens', 'tees');

insert into product_images
(product_id, main_image, image1, image2)
values(5, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/1/214465_PEAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/1/214465_PEAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/1/214465_BLAC_1.jpg');


-- ACCESSORIES
insert into products 
( product_id, price, title, description, gender, category)
values(6, 125.00, 'Romeo', 'Optical grade acetate Mineral glass lenses', 'accessories', 'sunglasses');

insert into product_images
(product_id, main_image, image1, image2)
values(6, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/140015_TCBM_1_2.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/140015_TCBM_1_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/140015_MBBM_1_2.jpg');

insert into products 
( product_id, price, title, description, gender, category)
values(7, 65.00, 'Vita Kisslock Purse', 'Top handle Kisslock entry 100% leather', 'accessories', 'bags');

insert into product_images
(product_id, main_image, image1, image2)
values(7, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/234071_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/234071_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/234071_GREN_1.jpg');


insert into products 
( product_id, price, title, description, gender, category)
values(8, 90.00, 'Hibiscus Hood', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'mens', 'hoodies');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(8, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_ASHH_1.jpg');

insert into products 
( product_id, price, title, description, gender, category)
values(9, 800.00, 'Twoness crown denim jacket', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'mens', 'jackets');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(9, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_LTDN_3.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_LTDN_3.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_INDO_3_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_LTDE_3.jpg');


truncate products;
truncate product_images;

select *
from products p 
join product_images pi
on p.product_id = pi.product_id;