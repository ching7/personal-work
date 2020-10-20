create table sys_admin
(
    admin_id      int auto_increment
        primary key,
    user_name     varchar(255)  null,
    user_password varchar(4000) null,
    roles         varchar(255)  null,
    name          varchar(255)  null,
    avatar        varchar(255)  null
)
    charset = utf8;

INSERT INTO mall_template.sys_admin (admin_id, user_name, user_password, roles, name, avatar) VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '超级管理员', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200730105134.png');