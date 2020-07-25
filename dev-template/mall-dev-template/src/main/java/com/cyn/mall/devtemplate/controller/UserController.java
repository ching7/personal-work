package com.cyn.mall.devtemplate.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cyn.mall.devtemplate.Bean.RT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.UserService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;


/**
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-07-25 14:59:41
 */
@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    private UserService userService;


    /**
     * 获取用户信息
     *
     * @param userId
     * @return
     */
    @RequestMapping(value = "/userInfo", method = RequestMethod.POST)
    public RT getUserInfo(@RequestParam String userId) {
        RT rt = new RT();
        UserEntity userEntity = userService.getById(userId);
        if (userEntity != null) {
            rt.setMsg("suc");
            rt.setResult(userEntity);
            rt.setStatus("0");
        } else {
            rt.setMsg("未登录");
            rt.setStatus("1");
        }
        return rt;
    }

    /**
     * 登陆
     *
     * @param userName
     * @param userPwd
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public RT login(@RequestParam String userName, String userPwd) {
        RT rt = new RT();
        QueryWrapper<UserEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper
                .eq("user_name", userName)
                .eq("user_pwd", userPwd);
        UserEntity userEntity = userService.getOne(queryWrapper);
        if (userEntity != null) {
            rt.setMsg("登陆成功");
            rt.setResult(userEntity);
            rt.setStatus("0");
        } else {
            rt.setMsg("账号或者密码错误");
            rt.setStatus("1");
        }
        return rt;
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:user:list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = userService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{userId}")
    //@RequiresPermissions("devtemplate:user:info")
    public R info(@PathVariable("userId") Long userId) {
        UserEntity user = userService.getById(userId);

        return R.ok().put("user", user);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("devtemplate:user:save")
    public R save(@RequestBody UserEntity user) {
        userService.save(user);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("devtemplate:user:update")
    public R update(@RequestBody UserEntity user) {
        userService.updateById(user);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("devtemplate:user:delete")
    public R delete(@RequestBody Long[] userIds) {
        userService.removeByIds(Arrays.asList(userIds));

        return R.ok();
    }

}
