package com.ll.farm.mall.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ll.common.utils.PageUtils;
import com.ll.farm.mall.admin.entity.SysOssEntity;

import java.util.Map;

/**
 * 文件上传
 *
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
public interface SysOssService extends IService<SysOssEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

