package com.cyn.mall.devtemplate.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyn.common.utils.PageUtils;
import com.cyn.mall.devtemplate.entity.OssObjectEntity;

import java.util.Map;

/**
 * 对象存储信息表
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-24 16:50:44
 */
public interface OssObjectService extends IService<OssObjectEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

