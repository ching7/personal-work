package com.ll.farm.mall.admin.controller;

import java.util.*;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.ll.farm.mall.admin.entity.SysMenuEntity;
import com.ll.farm.mall.admin.service.SysMenuService;
import com.ll.common.utils.PageUtils;
import com.ll.common.utils.R;



/**
 * 菜单管理
 *
 * @author ll
 * @email ll@qq.com
 * @date 2020-07-22 23:08:08
 */
@RestController
@RequestMapping("admin/sysmenu")
public class SysMenuController {
    @Autowired
    private SysMenuService sysMenuService;

    /**
     * 列表
     */
    @RequestMapping(value = "/listByPermsLike",method = RequestMethod.POST)
    //@RequiresPermissions("admin:sysmenu:list")
    public R getMenuByPremLike(@RequestBody String perms){
        QueryWrapper<SysMenuEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("perms",perms);
        Collection<SysMenuEntity> sysMenuEntities = sysMenuService.list(queryWrapper);
        return R.ok().put("sysMenu", sysMenuEntities);
    }

    /**
     * 列表
     */
    @RequestMapping("/listByIds")
    //@RequiresPermissions("admin:sysmenu:list")
    public R getMenuByIds(@RequestBody String menuId,String parentId){
        Map<String, Object> columnMap = new HashMap<>();
        columnMap.put("menu_id",menuId);
        columnMap.put("parent_id",parentId);
        Collection<SysMenuEntity> sysMenuEntities = sysMenuService.listByMap(columnMap);
        return R.ok().put("sysMenu", sysMenuEntities);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("admin:sysmenu:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sysMenuService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{menuId}")
    //@RequiresPermissions("admin:sysmenu:info")
    public R info(@PathVariable("menuId") Long menuId){
		SysMenuEntity sysMenu = sysMenuService.getById(menuId);

        return R.ok().put("sysMenu", sysMenu);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("admin:sysmenu:save")
    public R save(@RequestBody SysMenuEntity sysMenu){
		sysMenuService.save(sysMenu);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("admin:sysmenu:update")
    public R update(@RequestBody SysMenuEntity sysMenu){
		sysMenuService.updateById(sysMenu);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("admin:sysmenu:delete")
    public R delete(@RequestBody Long[] menuIds){
		sysMenuService.removeByIds(Arrays.asList(menuIds));

        return R.ok();
    }

}
