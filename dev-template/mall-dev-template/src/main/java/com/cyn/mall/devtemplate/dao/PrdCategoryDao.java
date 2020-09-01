package com.cyn.mall.devtemplate.dao;

import com.cyn.mall.devtemplate.entity.PrdCategoryEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 商品分类表
 * 
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-01 10:27:01
 */
@Mapper
public interface PrdCategoryDao extends BaseMapper<PrdCategoryEntity> {
	
}
