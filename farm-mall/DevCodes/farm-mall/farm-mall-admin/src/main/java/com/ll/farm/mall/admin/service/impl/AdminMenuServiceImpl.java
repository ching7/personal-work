package com.ll.farm.mall.admin.service.impl;

import com.ll.farm.mall.admin.bean.AdminMenu;
import com.ll.farm.mall.admin.dao.AdminMenuDao;
import com.ll.farm.mall.admin.service.AdminMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件描述
 *
 * @ProjectName: farm-mall
 * @Package: com.ll.farm.mall.admin.service.impl
 * @Date 2020/7/16 19:43
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Service
public class AdminMenuServiceImpl implements AdminMenuService {

    @Autowired
    AdminMenuDao adminMenuDao;

    /**
     * 获取用户菜单
     *
     * @return
     */
    @Override
    public AdminMenu getAdminMenus() {
        return adminMenuDao.getAdminMenus();
    }
}
