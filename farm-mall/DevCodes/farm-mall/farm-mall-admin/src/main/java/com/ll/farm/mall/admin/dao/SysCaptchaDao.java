package com.ll.farm.mall.admin.dao;

import com.ll.farm.mall.admin.entity.SysCaptchaEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 系统验证码
 * 
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
@Mapper
public interface SysCaptchaDao extends BaseMapper<SysCaptchaEntity> {
	
}
