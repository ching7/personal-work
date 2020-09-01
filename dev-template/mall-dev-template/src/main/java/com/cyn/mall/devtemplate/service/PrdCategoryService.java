package com.cyn.mall.devtemplate.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyn.common.utils.PageUtils;
import com.cyn.mall.devtemplate.entity.PrdCategoryEntity;

import java.util.Map;

/**
 * 商品分类表
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-01 10:27:01
 */
public interface PrdCategoryService extends IService<PrdCategoryEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

