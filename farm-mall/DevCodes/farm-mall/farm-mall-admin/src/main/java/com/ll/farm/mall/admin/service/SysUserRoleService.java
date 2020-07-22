package com.ll.farm.mall.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ll.common.utils.PageUtils;
import com.ll.farm.mall.admin.entity.SysUserRoleEntity;

import java.util.Map;

/**
 * 用户与角色对应关系
 *
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
public interface SysUserRoleService extends IService<SysUserRoleEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

