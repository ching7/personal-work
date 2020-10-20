create table sys_cart
(
    cart_id       bigint auto_increment comment '购物车id'
        primary key,
    user_id       int(20)        null comment '用户id',
    product_id    int            null comment ' 产品id',
    product_img   varchar(255)   null comment '产品图片',
    product_name  varchar(255)   null comment '产品名称',
    checked       varchar(255)   null,
    product_num   int            null comment '产品数量',
    product_price decimal(10, 2) null comment '产品价格'
)
    charset = utf8;

INSERT INTO mall_template.sys_cart (cart_id, user_id, product_id, product_img, product_name, checked, product_num, product_price) VALUES (12, 2, 1, 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', '《深泽直人》', '0', 1, 199.00);