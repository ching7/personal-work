package com.cyn.mall.devtemplate.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cyn.mall.devtemplate.bean.RTD;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.AdminEntity;
import com.cyn.mall.devtemplate.service.AdminService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;
import sun.security.provider.MD5;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-08-05 11:22:10
 */
@RestController
@RequestMapping("/vue-admin-template/user")
public class AdminController {
    @Autowired
    private AdminService adminService;

    /**
     * 管理员信息查询
     */
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    //@RequiresPermissions("devtemplate:admin:list")
    public RTD getAdminInfo(@RequestParam("token") Integer token) {
        RTD rtd = new RTD();
        QueryWrapper<AdminEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("admin_id", token);
        AdminEntity adminEntity = adminService.getOne(queryWrapper);
        if (adminEntity != null) {
            rtd.setData(adminEntity);
        }
        rtd.setCode(20000);
        return rtd;
    }

    /**
     * 管理员登陆
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    //@RequiresPermissions("devtemplate:admin:list")
    public RTD adminLogin(@RequestBody Map<String, Object> params, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        RTD rtd = new RTD();
        Map<String, Object> data = new HashMap<>();

        String userName = (String) params.get("username");
        String passWord = (String) params.get("password");
        QueryWrapper<AdminEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name", userName).eq("user_password", passWord);
        AdminEntity adminEntity = adminService.getOne(queryWrapper);
        if (adminEntity != null) {
            Integer adminId = adminEntity.getAdminId();
            data.put("token", adminId);
        }
        rtd.setData(data);
        rtd.setCode(20000);
        return rtd;
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:admin:list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = adminService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{adminId}")
    //@RequiresPermissions("devtemplate:admin:info")
    public R info(@PathVariable("adminId") Integer adminId) {
        AdminEntity admin = adminService.getById(adminId);

        return R.ok().put("admin", admin);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("devtemplate:admin:save")
    public R save(@RequestBody AdminEntity admin) {
        adminService.save(admin);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("devtemplate:admin:update")
    public R update(@RequestBody AdminEntity admin) {
        adminService.updateById(admin);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("devtemplate:admin:delete")
    public R delete(@RequestBody Integer[] adminIds) {
        adminService.removeByIds(Arrays.asList(adminIds));

        return R.ok();
    }

}
