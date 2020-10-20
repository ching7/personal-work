create table sys_order
(
    order_id     bigint auto_increment comment '订单编号'
        primary key,
    user_id      int           null comment '用户编号',
    goods_list   varchar(8000) null comment '订单商品',
    order_total  decimal       null comment '订单总价',
    address_id   int           null comment '收货地址',
    order_status varchar(255)  null comment '订单状态',
    create_date  varchar(255)  null comment '创建时间'
)
    charset = utf8;

INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (9, 1, '[{"cartId":10,"checked":"1","productId":2,"productImg":"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg","productName":"坚果 Pro 软胶保护套","productNum":1,"productPrice":49.00,"userId":1}]', 995, 1, '1', '20200801154604');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (10, 1, '[{"cartId":10,"checked":"1","productId":2,"productImg":"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg","productName":"坚果 Pro 软胶保护套","productNum":1,"productPrice":49.00,"userId":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (11, 1, '[{"cartId":10,"checked":"1","productId":2,"productImg":"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg","productName":"坚果 Pro 软胶保护套","productNum":1,"productPrice":49.00,"userId":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (12, 1, '[{"cartId":10,"checked":"1","productId":2,"productImg":"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg","productName":"坚果 Pro 软胶保护套","productNum":1,"productPrice":49.00,"userId":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (13, 1, '[{"cartId":10,"checked":"1","productId":2,"productImg":"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg","productName":"坚果 Pro 软胶保护套","productNum":1,"productPrice":49.00,"userId":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (14, 1, '[{"cartId":10,"checked":"1","productId":2,"productImg":"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg","productName":"坚果 Pro 软胶保护套","productNum":1,"productPrice":49.00,"userId":1}]', 995, 1, '1', '20200801154604');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (15, 1, '[{"cartId":11,"checked":"1","productId":1,"productImg":"http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg","productName":"《深泽直人》","productNum":2,"productPrice":199.00,"userId":1}]', 398, 13, '1', '20200930112045');
INSERT INTO mall_template.sys_order (order_id, user_id, goods_list, order_total, address_id, order_status, create_date) VALUES (16, 5, '[{"cartId":13,"checked":"1","productId":38,"productImg":"http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80mask.jpg","productName":"1","productNum":1,"productPrice":1.00,"userId":5}]', 1, 15, '1', '20200930144812');