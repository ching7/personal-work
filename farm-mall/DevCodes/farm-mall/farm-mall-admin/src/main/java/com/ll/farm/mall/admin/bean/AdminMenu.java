package com.ll.farm.mall.admin.bean;

import io.swagger.annotations.ApiModel;
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
@ApiModel(value="用户菜单",description="用户菜单类")
public class AdminMenu {
    private String name;
    private String path;

    public AdminMenu(String name, String path) {
        this.name = name;
        this.path = path;
    }
}
