create table sys_arg
(
    sys_name        varchar(255)  null,
    sys_user_count  varchar(255)  null,
    init_date       datetime      null,
    sys_views_count int default 0 null,
    sys_description varchar(255)  null
)
    charset = utf8;

INSERT INTO mall_template.sys_arg (sys_name, sys_user_count, init_date, sys_views_count, sys_description) VALUES ('商城后台管理', '1', '2020-09-01 10:05:38', 52, null);