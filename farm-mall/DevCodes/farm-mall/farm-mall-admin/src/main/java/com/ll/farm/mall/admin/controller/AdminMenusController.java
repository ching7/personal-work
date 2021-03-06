package com.ll.farm.mall.admin.controller;

import com.ll.farm.mall.admin.bean.AdminMenu;
import com.ll.farm.mall.admin.service.AdminMenuService;
import com.ll.farm.mall.parent.utils.Hello;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
@Slf4j
@Api(value = "用户菜单演示", tags = "用户菜单")
public class AdminMenusController {

    @Autowired
    AdminMenuService adminMenuService;

    @Autowired
    Hello hello;

    @RequestMapping(value = "/getMenus")
    @ApiOperation(notes = "需要id", value = "获取用户菜单")
    public AdminMenu getMenus(@ApiParam(required = true, value = "用户id") @RequestBody Integer userId) {
        hello.getHello();
        return adminMenuService.getAdminMenus();
    }
}
