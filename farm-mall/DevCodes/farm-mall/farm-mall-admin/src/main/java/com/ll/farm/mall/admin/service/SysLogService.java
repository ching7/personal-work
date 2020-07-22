package com.ll.farm.mall.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ll.common.utils.PageUtils;
import com.ll.farm.mall.admin.entity.SysLogEntity;

import java.util.Map;

/**
 * 系统日志
 *
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
public interface SysLogService extends IService<SysLogEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

