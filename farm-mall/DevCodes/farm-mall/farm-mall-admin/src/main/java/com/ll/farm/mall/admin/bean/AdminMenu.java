package com.ll.farm.mall.admin.bean;

import lombok.Data;

/**
 * 文件描述
 *
 * @ProjectName: farm-mall
 * @Package: com.ll.farm.mall.admin.bean
 * @Date 2020/7/16 19:37
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Data
public class AdminMenu {
    private String name;
    private String path;

    public AdminMenu(String name, String path) {
        this.name = name;
        this.path = path;
    }
}
