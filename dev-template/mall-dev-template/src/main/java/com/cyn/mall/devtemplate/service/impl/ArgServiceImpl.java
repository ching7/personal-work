package com.cyn.mall.devtemplate.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.Query;

import com.cyn.mall.devtemplate.dao.ArgDao;
import com.cyn.mall.devtemplate.entity.ArgEntity;
import com.cyn.mall.devtemplate.service.ArgService;


@Service("argService")
public class ArgServiceImpl extends ServiceImpl<ArgDao, ArgEntity> implements ArgService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<ArgEntity> page = this.page(
                new Query<ArgEntity>().getPage(params),
                new QueryWrapper<ArgEntity>()
        );

        return new PageUtils(page);
    }

}