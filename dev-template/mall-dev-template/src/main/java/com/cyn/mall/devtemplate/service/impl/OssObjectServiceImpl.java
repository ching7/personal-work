package com.cyn.mall.devtemplate.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.Query;

import com.cyn.mall.devtemplate.dao.OssObjectDao;
import com.cyn.mall.devtemplate.entity.OssObjectEntity;
import com.cyn.mall.devtemplate.service.OssObjectService;


@Service("ossObjectService")
public class OssObjectServiceImpl extends ServiceImpl<OssObjectDao, OssObjectEntity> implements OssObjectService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<OssObjectEntity> page = this.page(
                new Query<OssObjectEntity>().getPage(params),
                new QueryWrapper<OssObjectEntity>()
        );

        return new PageUtils(page);
    }

}