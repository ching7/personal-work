package com.cyn.mall.devtemplate.controller;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.cyn.mall.devtemplate.Bean.RT;
import com.cyn.mall.devtemplate.Bean.RTC;
import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import com.cyn.mall.devtemplate.entity.AddressEntity;
import com.cyn.mall.devtemplate.entity.CartEntity;
import com.cyn.mall.devtemplate.service.AddressService;
import com.cyn.mall.devtemplate.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.UserService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import static com.cyn.mall.devtemplate.constants.Constants.userIdStr;


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

    @Autowired
    private CartService cartService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private UserCtrl userCtrl;

    /**
     * 修改收获地址
     *
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "/addressUpdate", method = RequestMethod.POST, name = "修改收获地址")
    public RT putAddressList(HttpServletRequest httpServletRequest, @RequestParam Map<String, Object> params) {
        RT rt = new RT();
        Integer inputAddressId = Integer.parseInt((String) params.get("addressId"));
        String inputUserName = (String) params.get("userName");
        String inputTel = (String) params.get("tel");
        String inputStreetName = (String) params.get("streetName");
        String inputIsDefault = (String) params.get("isDefault");
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpServletRequest);
        if (userIdforReqCookies != null && inputAddressId > 0 && !inputUserName.trim().isEmpty() && !inputStreetName.trim().isEmpty()) {
            UpdateWrapper<AddressEntity> updateWrapper = new UpdateWrapper<>();
            updateWrapper.eq("user_id", userIdforReqCookies).eq("address_id", inputAddressId);
            AddressEntity addressEntity = new AddressEntity();
            addressEntity.setStreetName(inputStreetName);
            addressEntity.setTel(inputTel);
            addressEntity.setIsDefault(inputIsDefault);
            boolean update = addressService.update(addressEntity, updateWrapper);
            if (update) {
                rt.setMsg("suc");
                rt.setStatus("0");
                rt.setResult("");
            }
        } else {
            rt.setMsg("未登录");
            rt.setStatus("1");
        }
        return rt;
    }

    /**
     * 查询收获地址
     *
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "/addressList", method = RequestMethod.POST, name = "查询收获地址")
    public RT getAddressList(HttpServletRequest httpServletRequest) {
        RT rt = new RT();
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpServletRequest);
        if (userIdforReqCookies != null) {
            QueryWrapper<AddressEntity> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user_id", userIdforReqCookies);
            List<AddressEntity> addressEntityList = addressService.list(queryWrapper);
            if (addressEntityList.size() > 0) {
                rt.setMsg("suc");
                rt.setStatus("0");
                rt.setResult(addressEntityList);
            }
        } else {
            rt.setMsg("未登录");
            rt.setStatus("1");
        }
        return rt;
    }

    /**
     * 查询购物车
     *
     * @return
     */
    @RequestMapping(value = "/cartList", method = RequestMethod.POST,name = "查询购物车")
    public RTC getCartList(HttpServletRequest httpServletRequest) {
        RTC rtc = new RTC();
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpServletRequest);
        if (userIdforReqCookies != null) {
            QueryWrapper<CartEntity> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user_id", userIdforReqCookies);
            List<CartEntity> listCarts = cartService.list(queryWrapper);
            rtc.setCount(listCarts.size());
            rtc.setMsg("suc");
            rtc.setResult(listCarts);
            rtc.setStatus("1");
        } else {
            rtc.setMsg("未登录");
            rtc.setStatus("1");
        }

        return rtc;
    }

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
