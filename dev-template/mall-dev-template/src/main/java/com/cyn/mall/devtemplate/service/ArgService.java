package com.cyn.mall.devtemplate.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyn.common.utils.PageUtils;
import com.cyn.mall.devtemplate.entity.ArgEntity;

import java.util.Map;

/**
 * 
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-27 14:34:00
 */
public interface ArgService extends IService<ArgEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

