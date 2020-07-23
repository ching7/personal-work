package com.ll.farm.mall.admin.dao;

import com.ll.farm.mall.admin.entity.SysUserEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 系统用户
 * 
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
@Mapper
public interface SysUserDao extends BaseMapper<SysUserEntity> {
    /**
     * 查询所有用户
     * @return
     */
    List<SysUserEntity> selectUserAll();
}
