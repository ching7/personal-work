package com.ll.farm.mall.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ll.common.utils.PageUtils;
import com.ll.farm.mall.admin.entity.SysRoleEntity;

import java.util.Map;

/**
 * 角色
 *
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
public interface SysRoleService extends IService<SysRoleEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

