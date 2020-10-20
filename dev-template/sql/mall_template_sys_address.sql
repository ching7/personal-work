create table sys_address
(
    address_id  bigint auto_increment comment '收货地址编号'
        primary key,
    user_name   varchar(255) null comment '用户账号',
    user_id     varchar(255) null comment '用户编号',
    street_name varchar(255) null comment '详细地址',
    tel         varchar(255) null comment '电话号码',
    is_default  int(1)       null comment '是否为默认'
)
    charset = utf8;

INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (1, 'admin', '1', '江南大道3588', '1385555', 1);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (2, 'admin', '1', '3588恒生电子', '13812222', 0);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (3, 'test', '2', '南湖春城', '123111111111', 1);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (5, 'test', '2', '江南大8888道3588123123123', '13222222222', 1);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (6, 'test', '2', '济南大学', '13222222222', 1);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (7, 'test', '2', '济南大学', '13222222222', 1);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (11, '1', '4', '1', '1', 0);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (12, '2', '4', '2', '2', 1);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (13, '陈亚南', '1', '陈亚南', '123', 0);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (14, '123', '1', '123', '123', 0);
INSERT INTO mall_template.sys_address (address_id, user_name, user_id, street_name, tel, is_default) VALUES (15, 'chenyn', '5', '1', '1', 1);