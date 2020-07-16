package com.ll.farm.mall.admin.controller;

import com.ll.farm.mall.admin.bean.AdminMenu;
import com.ll.farm.mall.admin.service.AdminMenuService;
import com.ll.farm.mall.parent.utils.Hello;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件描述
 *
 * @ProjectName: farm-mall
 * @Package: com.ll.farm.mall.admin.controller
 * @Date 2020/7/16 19:35
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@RequestMapping("/ums")
@RestController
public class AdminMenusController {

    @Autowired
    AdminMenuService adminMenuService;

    @Autowired
    Hello hello;

    @RequestMapping("/getMenus")
    public AdminMenu getMenus() {
        hello.getHello();
        return adminMenuService.getAdminMenus();
    }
}
