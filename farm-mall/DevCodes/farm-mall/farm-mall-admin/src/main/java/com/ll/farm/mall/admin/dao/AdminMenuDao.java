package com.ll.farm.mall.admin.dao;

import com.ll.farm.mall.admin.bean.AdminMenu;
import org.springframework.stereotype.Service;

/**
 * 文件描述
 *
 * @ProjectName: farm-mall
 * @Package: com.ll.farm.mall.admin.dao
 * @Date 2020/7/16 19:44
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Service
public class AdminMenuDao {
    /**
     * 获取用户菜单
     *
     * @return
     */
    public AdminMenu getAdminMenus() {
        return new AdminMenu("test", "测试菜单");
    }
}
