package com.cyn.mall.devtemplate.ctrl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.cyn.mall.devtemplate.entity.ArgEntity;
import com.cyn.mall.devtemplate.service.ArgService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.ctrl
 * @Date 2020/9/27 14:37
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Log4j2
@Component
public class SysArgCtrl {
    @Autowired
    ArgService argService;

    private String sysName = "商城后台管理";

    public boolean addSysViewCount(){
        QueryWrapper<ArgEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("sys_name",sysName);
        List<ArgEntity> argEntities = argService.list(queryWrapper);
        if (argEntities.size()>0) {
            Integer sysViewsCount = argEntities.get(0).getSysViewsCount();
            UpdateWrapper<ArgEntity> updateWrapper = new UpdateWrapper<>();
            updateWrapper.eq("sys_name",sysName);
            ArgEntity argEntity = new ArgEntity();
            argEntity.setSysViewsCount(sysViewsCount+1);
            argService.update(argEntity,updateWrapper);
            log.info("系统访问人数增加，当前为：{}",sysViewsCount+1);
            return true;
        }else{
            log.error("系统参数不存在");
            return false;
        }
    }
}
