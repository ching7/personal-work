package com.ll.farm.mall.admin.dao;

import com.ll.farm.mall.admin.entity.SysRoleMenuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 角色与菜单对应关系
 * 
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
@Mapper
public interface SysRoleMenuDao extends BaseMapper<SysRoleMenuEntity> {
	
}
