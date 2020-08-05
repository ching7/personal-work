package com.cyn.mall.devtemplate.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyn.common.utils.PageUtils;
import com.cyn.mall.devtemplate.entity.AdminEntity;

import java.util.Map;

/**
 * 
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-08-05 11:22:10
 */
public interface AdminService extends IService<AdminEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

