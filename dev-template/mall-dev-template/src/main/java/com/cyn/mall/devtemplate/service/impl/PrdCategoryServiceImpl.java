package com.cyn.mall.devtemplate.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.Query;
import com.cyn.mall.devtemplate.dao.PrdCategoryDao;

import com.cyn.mall.devtemplate.entity.PrdCategoryEntity;
import com.cyn.mall.devtemplate.service.PrdCategoryService;


@Service("prdCategoryService")
public class PrdCategoryServiceImpl extends ServiceImpl<PrdCategoryDao, PrdCategoryEntity> implements PrdCategoryService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<PrdCategoryEntity> page = this.page(
                new Query<PrdCategoryEntity>().getPage(params),
                new QueryWrapper<PrdCategoryEntity>()
        );

        return new PageUtils(page);
    }

}