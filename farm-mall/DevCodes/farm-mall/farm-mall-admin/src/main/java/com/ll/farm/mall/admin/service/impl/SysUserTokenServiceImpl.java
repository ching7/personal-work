package com.ll.farm.mall.admin.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ll.common.utils.PageUtils;
import com.ll.common.utils.Query;

import com.ll.farm.mall.admin.dao.SysUserTokenDao;
import com.ll.farm.mall.admin.entity.SysUserTokenEntity;
import com.ll.farm.mall.admin.service.SysUserTokenService;


@Service("sysUserTokenService")
public class SysUserTokenServiceImpl extends ServiceImpl<SysUserTokenDao, SysUserTokenEntity> implements SysUserTokenService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<SysUserTokenEntity> page = this.page(
                new Query<SysUserTokenEntity>().getPage(params),
                new QueryWrapper<SysUserTokenEntity>()
        );

        return new PageUtils(page);
    }

}