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


truncate products;
truncate product_images;

select *
from products p 
join product_images pi
on p.product_id = pi.product_id;






--PRODUCTS
insert into products 
( product_id, price, title, description, gender, category)
values(1, 45.00, 'Stock International L/SL Tee', 'Regular fit long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(2, 40.00, 'Surf Skull Tee', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');


insert into products 
( product_id, price, title, description, gender, category)
values(3, 110.00, 'Polar Fleece Mock Neck', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(4, 38.00, 'W Stock International L/SL Tee', 'Womens long long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(5, 60.00, 'Lucile stripe l/sl mock neck', 'Womens long long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(6, 125.00, 'Romeo', 'Optical grade acetate Mineral glass lenses', 'accessories', 'sunglasses');

insert into products 
( product_id, price, title, description, gender, category)
values(7, 65.00, 'Vita Kisslock Purse', 'Top handle Kisslock entry 100% leather', 'accessories', 'bags');

insert into products 
( product_id, price, title, description, gender, category)
values(8, 90.00, 'Hibiscus Hood', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(9, 800.00, 'Twoness crown denim jacket', 'Mocked neck Patched logo Zipper closure Front zip pouch 100% polyester polar fleece Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(10, 90.00, 'World Tour Hood', 'Standard fit pullover hoodie Pouch pocket Hood with drawstrings Printed World Tour logo 80% cotton, 20% polyester fleece Imported', 'mens', 'sweaters');

insert into products 
( product_id, price, title, description, gender, category)
values(11, 180.00, 'Reversible Micro Fleece Jacket', 'Reversible body Front side zip pockets Regular fit Adjustable waist Printed logo Full front zip 100% Poly sherpa, 100% Nylon (reverse side) Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(12, 275.00, 'Patchwork Overcoat', 'Double-breasted button closure Notched collar Two front pockets 90% wool / 10% Polyester Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(13, 275.00, 'Patchwork Overcoat', 'Ribbed cuffs and hem Patched logo Front welt pockets Full zip placket 100% printed poly w/ 80% down/20% feather', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(14, 700.00, 'Twoness Military Jacket', 'One of a kind Ribbed cuffs and hem Patched logo Front welt pockets Full zip fastening High neck collar 100% cotton', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(15, 120.00, 'Stock International Coach Jacket', 'Pointed collar Elasticized cuffs Printed logo Slanted front pockets Adjustable drawstring 85% polyester 15% Cotton Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(16, 130.00, 'Ripstop Pullover', 'Printed logo on back Kangaroo pocket Adjustable drawcords 100% Cotton ripstop Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(17, 200.00, 'Velvet Bomber', 'Elasticized cuffs Full zip placket Slanted front pockets 100% Poly velvet Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(18, 100.00, 'Polar Fleece Full Zip', 'Pointed collar Front side pockets Printed logo Full front zip closure 100% Polyester polar fleece Imported', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(19, 130.00, 'TEXTURED RIB TRACK JACKET', 'Ribbed cuffs and hem Front welt pockets Full zip fastening High neck collar Raglan cut sleeves 86% poly/ 14% cotton', 'mens', 'jackets');

insert into products 
( product_id, price, title, description, gender, category)
values(20, 42.00, 'Plant Love Pocket Tee', 'Regular fit short sleeve pocket t-shirt Ribbed crew neck Screen print logo 100% cotton Pigment dye treatment Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(21, 54.00, 'UNITE TIE DYE L/SL TEE', 'Regular fit long sleeve t-shirt Ribbed neck and cuffs Printed logo 100% tie dyed cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(22, 36.00, 'Mystic 8 Ball Tee', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(23, 44.00, 'Doll L/SL Tee', 'Regular fit long sleeve t-shirt Ribbed neck and cuffs Printed logo 100% dyed cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(24, 44.00, 'ITAL HARVEST L/SL TEE', 'Regular fit long sleeve t-shirt Ribbed neck and cuffs Printed logo 100% pigment dyed cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(25, 46.00, 'OBLIVION TIE DYE TEE
', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');


-- PRODUCT IMAGES
insert into product_images
(product_id, main_image, image1, image2, image3)
values(1, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_OCEA_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3993282_WHIT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(2, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_NATL_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_NATL_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_RASP_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904317_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(3, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/small_image/470x500/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_ZEBR_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/small_image/470x500/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_ZEBR_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_BERR_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118299_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(4, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992588_GHEA_1.jpg');


insert into product_images
(product_id, main_image, image1, image2)
values(5, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/1/214465_PEAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/1/214465_PEAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/1/214465_BLAC_1.jpg');


insert into product_images
(product_id, main_image, image1, image2)
values(6, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/140015_TCBM_1_2.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/140015_TCBM_1_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/140015_MBBM_1_2.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(7, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/234071_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/234071_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/234071_GREN_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(8, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_PALG_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1924301_ASHH_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(9, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_LTDN_3.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_LTDN_3.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_INDO_3_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315152_LTDE_3.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(10, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3923277_BLAC_2.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3923277_BLAC_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3923277_NATL_2.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/9/3923277_PINE_2.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(11, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115423_LIME_6.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115423_LIME_6.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115423_TIED_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(12, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115416_MULT_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115416_MULT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(13, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115421_ORAN_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115421_ORAN_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115421_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(14, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315153_BROW_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315153_BROW_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315153_GREN_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(15, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_DRED_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_DRED_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_KHAK_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(16, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_BLAC_10.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_BLAC_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_CAMO_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_RUST_10.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(17, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115425_NAVY_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115425_NAVY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115425_BURG_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(18, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118286_CAMO_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118286_CAMO_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118286_ORAN_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(19, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_DTEA_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_DTEA_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_REDD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_BLAC_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(20, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_GOLD_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_GOLD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_ARMY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(21, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994329_NAT6_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994329_NAT6_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994329_NAT3_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(22, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904305_BLAC_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904305_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904305_PALG_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904305_WHIT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(23, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994324_ARMY_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994324_ARMY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994324_GOLD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994324_NATL_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(24, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994325_NATL_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994325_NATL_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994325_RASP_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994325_SLAT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(25, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904318_NAT1_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904318_NAT1_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904318_NAT5_1.jpg');
