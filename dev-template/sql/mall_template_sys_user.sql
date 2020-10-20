create table sys_user
(
    user_id     bigint auto_increment,
    name        varchar(50)             not null comment '用户名',
    avatar      varchar(16000)          null comment '头像',
    user_name   varchar(50)             null comment '登陆账号',
    user_pwd    varchar(50)             null comment '登陆密码',
    cart_id     varchar(50)             null comment '购物车',
    address_id  varchar(50)             null comment '收获地址',
    create_time varchar(10) default '0' null,
    create_date varchar(10) default '0' null,
    constraint uk_user
        unique (user_id)
)
    charset = utf8;

alter table sys_user
    add primary key (user_id);

INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (1, '张三', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200730105134.png', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, null, '12231510', '20200915');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (2, '李四', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200730105134.png', 'test', '098f6bcd4621d373cade4e832627b4f6', null, null, '12231510', '20200915');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (3, '游客20200729190028', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'test123', '098f6bcd4621d373cade4e832627b4f6', null, null, '12231510', '20200915');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (4, '游客20200801161202', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 't', 'e358efa489f58062f10dd7316b65649e', null, null, '12231510', '20200915');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (5, '游客20200915192034', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn', '5beedb2de26da65b5d3bae7eea82283a', null, null, '0', '0');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (6, '游客20200915192206', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn2', '11241aa3de184fb4af3bd031d670251b', null, null, '0', '0');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (7, '游客20200915192239', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn3', '0553abf8ee34b9b9d7803c56384088b7', null, null, '0', '0');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (8, '游客20200915192329', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn4', '9c1800e25e22b28c50931d92797a03b7', null, null, '0', '192329');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (9, '游客20200928202439', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', '123', '202cb962ac59075b964b07152d234b70', null, null, '202439', '20200928');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (10, '游客20200928202642', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', '1234', '827ccb0eea8a706c4c34a16891f84e7b', null, null, '202642', '20200928');
INSERT INTO mall_template.sys_user (user_id, name, avatar, user_name, user_pwd, cart_id, address_id, create_time, create_date) VALUES (11, '游客20200928204458', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cynwml', '67bd0c5f8c1595d42dcc604075943fd3', null, null, '204458', '20200928');