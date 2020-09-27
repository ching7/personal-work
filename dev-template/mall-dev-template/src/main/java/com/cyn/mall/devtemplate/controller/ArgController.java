package com.cyn.mall.devtemplate.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.cyn.mall.devtemplate.bean.RTD;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.ArgEntity;
import com.cyn.mall.devtemplate.service.ArgService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;



/**
 * 
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-27 14:34:00
 */
@RestController
@RequestMapping("/api/sys")
public class ArgController {
    @Autowired
    private ArgService argService;

    /**
     * 列表
     */
    @RequestMapping(value = "/getSysInfo", method = RequestMethod.GET)
    //@RequiresPermissions("devtemplate:arg:list")
    public RTD getSysInfo(@RequestParam("token") Integer token){
        RTD rtd = new RTD();
        List<ArgEntity> list = argService.list();
        rtd.setCode(20000);
        rtd.setData(list);
        return rtd;
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:arg:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = argService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{sysName}")
    //@RequiresPermissions("devtemplate:arg:info")
    public R info(@PathVariable("sysName") String sysName){
		ArgEntity arg = argService.getById(sysName);

        return R.ok().put("arg", arg);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("devtemplate:arg:save")
    public R save(@RequestBody ArgEntity arg){
		argService.save(arg);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("devtemplate:arg:update")
    public R update(@RequestBody ArgEntity arg){
		argService.updateById(arg);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("devtemplate:arg:delete")
    public R delete(@RequestBody String[] sysNames){
		argService.removeByIds(Arrays.asList(sysNames));

        return R.ok();
    }

}
