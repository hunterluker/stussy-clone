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




drop table if exists product_images;
drop table if exists products;

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

create table product_images (
    id serial primary key,
    product_id integer,
    main_image text,
    image1 text,
    image2 text,
    image3 text
)



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
values(25, 46.00, 'OBLIVION TIE DYE TEE', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(26, 36.00, 'POOL DRAGON TEE', 'Regular fit short sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(27, 36.00, 'BASIC STUSSY TEE', 'Relaxed fit Crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(28, 42.00, 'RASTA POCKET TEE', 'Regular fit short sleeve pocket t-shirt Ribbed crew neck Screen print logo 100% cotton Pigment dye treatment Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(29, 42.00, 'RASTA POCKET TEE', 'Regular fit long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(30, 42.00, 'INTERNATIONAL ARC L/SL TEE', 'Regular fit long sleeve t-shirt Ribbed crew neck Printed logo 100% cotton Imported', 'mens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(31, 120.00, 'PILE FLEECE HOOD', 'Relaxed/oversized fit Ribbed cuffs, and hem Embroidered logo 60% Poly/40% cotton Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(32, 105.00, 'COLOR BLOCKED HOOD', 'Regular fit long sleeve sweatshirt Ribbed neck, cuffs and hem Printed logo Double needle sewing on all seams 80% cotton, 20% polyester fleece Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(33, 85.00, 'DYNASTY CREW', 'Relaxed color blocked pullover hoodie Adjustable hem Ribbed cuffs Screen printed logo Contrast color hood and drawcord Kangaroo style pocket 100% cotton dry fleece Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(34, 90.00, 'STÜSSY WELD APPLIQUE CREW', 'Relaxed/oversized fit Ribbed cuffs, and hem Embroidered logo 80% cotton, 20% polyester Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(35, 80.00, 'STOCK S/SL TERRY CREW', 'Mid-weight crewneck sweatshirt Regular fit Ribbed neck, cuffs, and hem Embroidered tonal logo 100% cotton dry terry Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(36, 120.00, 'BLEACHED DYE SWEATER', 'Regular fit long sleeve sweatshirt Ribbed neck, cuffs and hem Embroidered logo Double needle sewing on all seams 100% cotton Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(37, 130.00, 'RIPSTOP PULLOVER', 'Printed logo on back Kangaroo pocketAdjustable drawcords 100% Cotton ripstop Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(38, 95.00, 'POLAR FLEECE HALF ZIP', 'Mocked neck Embroidered logo Zipped closure 100% Polyester polar fleece Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(39, 115.00, 'PERRY ZIP L/SL POLO KNIT', 'Mid-weight body Full zip polo Pointed collar Embroidered logo 100% combed cotton Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(40, 95.00, 'BASIC STÜSSY ZIP HOOD', 'Regular fit long sleeve sweatshirt Ribbed cuffs and hem Hood with drawstrings Full zip closure Two hand pockets Printed logo 80% cotton, 20% polyester fleece Imported', 'mens', 'sweater');

insert into products 
( product_id, price, title, description, gender, category)
values(41, 95.00, 'MUSHROOM CORD L/SL SHIRT', 'Light yarn dyed body Button fastenings Pointed collar Mushroom print all over Straight hem 100% cotton printed 21 wale corduroy Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(42, 90.00, 'SIMON L/SL ZIP POLO', 'Mid-weight body Full zip polo Pointed collar Embroidered logo 100% Heavy cotton yarn dyed stripe Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(43, 125.00, 'TIE DYE WORK L/SL SHIRT', 'Light yarn tie dyed body Button down placket Pointed collar Double chest pocket with button down flaps 100% Textured cotton Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(44, 115.00, 'PERRY ZIP L/SL POLO KNIT', 'Mid-weight body Full zip polo Pointed collar Embroidered logo 100% combed cotton Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(45, 105.00, 'WORK L/SL SHIRT', 'Pointed collar Split hem Embroidered patch Button closure Frontal chest pocket 65% polyester 35% cotton Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(46, 120.00, 'GEO SATIN L/SL SHIRT', 'Button fastenings Pointed collar Front chest pocket 55% Viscose/ 45% Raylon Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(47, 80.00, 'BOWLING SHIRT', 'Classic bowling style shirtEmbroidered logo Double chest pockets 70% poly and 30% rayon Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(48, 85.00, 'BERKELEY DENIM L/SL SHIRT', 'Denim construction Pointed collar Button placket Chest pocket 100% cotton Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(49, 100.00, 'LETTS BDU SHIRT', 'Pointed button collar Straight hem Double chest pocket Tonal buttons 100% cotton ripstop Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(50, 70.00, 'LION ZIP POCKET POLO', 'Heavy yarn dyed body Signature woven tab Pointed collar Full zip placket Straight hem 100% cotton pique Imported', 'mens', 'shirt');

insert into products 
( product_id, price, title, description, gender, category)
values(51, 48.00, 'WS WORLD TOUR L/SL TEE', 'Womens long sleeve tee shirt Ribbed crew neck Printed logo 100% cotton Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(52, 38.00, 'WS WORLD TOUR TEE', 'Womens short sleeve t-shirt Ribbed crew neck Printed graphic 100% cotton Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(53, 35.00, 'S CROWN TEE', 'Relaxed fit Double-needle stitching Crew neck Screenprinted logo 100% pigment dyed cotton Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(54, 48.00, 'WS PLANT LOVE TIE DYE L/SL TEE', 'Womens L/SL Tee Regular fit long sleeve t-shirt Ribbed neck and cuffs Screenprint design 100% cotton Pigment dye treatment Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(55, 35.00, 'ALL THAT JAZZ L/SL TEE', 'Womens L/SL Tee Classic fit long sleeve t-shirt Ribbed neck and cuffs Printed logo 100% cotton Imported', 'womens', 'tees');

insert into products 
( product_id, price, title, description, gender, category)
values(56, 35.00, 'STARS TEE', 'Relaxed fit Double-needle stitching Crew neck Screenprinted logo 100% pigment dyed cotton Imported', 'womens', 'tees')
;

insert into products 
( product_id, price, title, description, gender, category)
values(57, 38.00, 'WS YANG SUN TIE DYE TEE', 'Womens sleeve t-shirt Ribbed crew neck Printed logo 100% tie dyed cotton Imported', 'womens', 'tees')
;

insert into products 
( product_id, price, title, description, gender, category)
values(58, 44.00, '8 BALL L/SL TEE', 'Regular fit long sleeve t-shirt Ribbed neck and cuffs Screenprint design 100% cotton Pigment dye treatment Imported', 'womens', 'tees')
;

insert into products 
( product_id, price, title, description, gender, category)
values(59, 44.00, 'CAMO ITALIC L/SL TEE', 'Regular fit long sleeve t-shirt Ribbed neck and cuffs Screenprint design 100% cotton Pigment dye treatment Imported', 'womens', 'tees')
;

insert into products 
( product_id, price, title, description, gender, category)
values(60, 35.00, 'DOT FADE TEE', 'Womens tee shirt Crew neck Screen print 100% cotton Imported', 'womens', 'tees')
;


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
(product_id, main_image, image1, image2)
values(11, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115423_LIME_6.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115423_LIME_6.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115423_TIED_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(12, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115416_MULT_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115416_MULT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(13, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115421_ORAN_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115421_ORAN_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115421_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(14, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315153_BROW_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315153_BROW_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315153_GREN_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(15, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_DRED_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_DRED_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/1/315123_KHAK_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(16, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_BLAC_10.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_BLAC_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_CAMO_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_RUST_10.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(17, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115425_NAVY_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115425_NAVY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115425_BURG_1.jpg');


insert into product_images
(product_id, main_image, image1, image2)
values(18, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118286_CAMO_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118286_CAMO_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118286_ORAN_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(19, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_DTEA_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_DTEA_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_REDD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/115414_BLAC_1.jpg');


insert into product_images
(product_id, main_image, image1, image2, image3)
values(20, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_GOLD_1.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_GOLD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_ARMY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944314_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
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
(product_id, main_image, image1, image2)
values(25, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904318_NAT1_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904318_NAT1_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904318_NAT5_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(26, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904306_WINE_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904306_WINE_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904306_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904306_OCEA_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(27, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904257_BLAC_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904257_BLAC_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904257_WHIT_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1904257_INKK_2.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(28, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944315_SLAT_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944315_SLAT_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944315_RASP_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1944315_BLUS_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(29, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994290_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994290_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994290_PALG_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994290_WHIT_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(30, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994227_BLAC_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994227_BLAC_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994227_GHEA_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1994227_WHIT_2.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(31, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118301_BERR_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118301_BERR_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118301_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118301_OLIV_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(32, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1914300_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1914300_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1914300_PALG_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1914300_WINE_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(33, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118300_NAVY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118300_NAVY_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(34, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118305_GHEA_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118305_GHEA_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118305_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118305_PALG_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(35, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118268_GHEA_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118268_GHEA_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118268_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(36, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117053_REDD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117053_REDD_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117053_OLIV_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(37, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_BLAC_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_BLAC_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_CAMO_10.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110004_RUST_10.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(38, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118287_LIME_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118287_LIME_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118287_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/118287_ROYL_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(39, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117057_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117057_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117057_OLIV_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(40, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1974257_ASHH_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1974257_ASHH_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1974257_RUST_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/9/1974257_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(41, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110011_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110011_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110011_BURG_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(42, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1140114_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1140114_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1140114_BROW_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(43, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110015_YELO_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110015_YELO_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110015_OLIV_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(44, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117057_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117057_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/117057_OLIV_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(45, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110001_BLUE_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110001_BLUE_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110001_NAVY_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1110001_ORAN_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(46, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111991_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111991_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(47, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111998_BLUE_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111998_BLUE_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(48, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111962_LBLU_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111962_LBLU_1_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(49, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111968_OLIV_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111968_OLIV_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111968_ORAN_1_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/111968_PINK_1_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(50, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1140092_BLAC_1.jpg',
'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1140092_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(51, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992584_BLUS_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992584_BLUS_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992584_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992584_ARMY_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(52, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902995_RASP_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902995_RASP_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902995_SLAT_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902995_NATL_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(53, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902983_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902983_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902983_NATL_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902983_BLUS_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(54, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992572_NAT2_1.jpg',
'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992572_NAT2_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(55, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992569_BLAC_1.jpg',
'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992569_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992569_RUST_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992569_PALG_1.jpg');

insert into product_images
(product_id, main_image, image1, image2)
values(56, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902974_BLUS_1.jpg',
'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902974_BLUS_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902974_BLAC_1.jpg');

insert into product_images
(product_id, main_image, image1)
values(57, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902976_WHI6_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902976_WHI6_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(58, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992565_SLAT_2.jpg',
'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992565_SLAT_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992565_GOLD_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992565_RASP_2.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(59, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992566_SLAT_1.jpg',
'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992566_SLAT_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992566_BLAC_1.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2992566_RASP_1.jpg');

insert into product_images
(product_id, main_image, image1, image2, image3)
values(60, 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902972_GOLD_2.jpg','https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902972_GOLD_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902972_BLUS_2.jpg', 'https://d2xe6rib7hqydz.cloudfront.net/store/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/9/2902972_BLAC_2.jpg');
