create table sys_product
(
    product_id          bigint auto_increment comment '产品id',
    cate_id             varchar(255) default '0' null comment '商品分类id',
    sale_price          decimal(10, 2)           null comment '零售价',
    product_name        varchar(255)             null comment '产品名称',
    product_image_small varchar(255)             null comment '产品小图',
    product_image_big   varchar(255)             null comment '产品大图
',
    product_msg         varchar(2000)            null comment '产品详细信息',
    stock               int                      null comment '库存',
    sub_title           varchar(255)             null comment '标题',
    limit_num           int                      null comment '限制购买数量',
    create_date         varchar(255) default ' ' null comment '创建日期',
    create_time         varchar(255) default ' ' null comment '创建时间',
    constraint uk_product
        unique (product_id)
)
    charset = utf8;

alter table sys_product
    add primary key (product_id);

INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (1, '[2,6]', 199.00, '《深泽直人》', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 999, '《深泽直人》2', 99, '20200912', '135850');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (2, '[74,89,94]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 1, '20200912', '140205');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (3, '[558,559,560]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200925', '170649');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (8, '[1,7,10]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200912', '140209');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (9, '[1,11,14]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200912', '140116');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (10, '[1,7,9]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200925', '162518');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (26, '[1,2,3]', 199.00, '《深泽直人》10', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 999, '《深泽直人》2', 99, '20200925', '162507');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (27, '[1,2,3]', 199.00, '《深泽直人》11', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/21DF0222-43D4-4EF5-A645-3F82D5D7F697.jpeg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/21DF0222-43D4-4EF5-A645-3F82D5D7F697.jpeg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/2B2DCD09-95C4-4439-B33C-8E127D518661.jpeg', 999, '《深泽直人》2', 2, '20201020', '103857');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (38, '[1,2,5]', 1.00, '测试商品', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/2F145F76-75C4-4274-8124-DE7D9E27D5CF.jpeg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/28733BC8-4A3E-4D65-9917-31B25D1D54A8.png', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/2EB08C06-3581-4C77-A09C-F93CD034BE63.jpeg', 100, '测试商品', 100, '20201020', '103833');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (39, '[1,2,3]', 20.00, '《深泽直人》12', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/28C17231-9E28-4DFD-997B-BB7DFE860F41.jpeg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/22484107-5E22-4EB3-B382-3478089BE2B3.jpeg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/2A1D42DF-246E-4834-A970-354711F23C29.jpeg', 999, '《深泽直人》2', 2, '20201020', '103814');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (40, '[1,2,3]', 400.00, '《深泽直人》13', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/E07E9F65-8707-486B-BDC0-7A77000B38D0.png', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/WtwSsqwYlA0.jpg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/2234F8BF-29AE-4F77-85D3-5072B479F387.jpeg', 999, '《深泽直人》2', 2, '20201020', '103740');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (41, '[1,2,3]', 200.00, '《深泽直人》14', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/WtwSsqwYlA0.jpg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/截屏2020-04-12下午9.48.05.png', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/WtwSsqwYlA0.jpg', 999, '《深泽直人》2', 2, '20201020', '103635');
INSERT INTO mall_template.sys_product (product_id, cate_id, sale_price, product_name, product_image_small, product_image_big, product_msg, stock, sub_title, limit_num, create_date, create_time) VALUES (42, '[1,2,3]', 199.00, '《深泽直人》15', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/RAuFpCRhYzw.jpg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/WtwSsqwYlA0.jpg', 'http://192.168.121.207:3333/oss/minio/view?filePath=2020-10-20/A3ByrnCJpVc.jpg', 999, '《深泽直人》2', 2, '20201020', '103524');