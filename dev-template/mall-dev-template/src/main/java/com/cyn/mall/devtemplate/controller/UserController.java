package com.cyn.mall.devtemplate.controller;

import java.math.BigDecimal;
import java.util.*;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.cyn.common.utils.DateUtils;
import com.cyn.mall.devtemplate.bean.RT;
import com.cyn.mall.devtemplate.bean.RTC;
import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import com.cyn.mall.devtemplate.entity.AddressEntity;
import com.cyn.mall.devtemplate.entity.CartEntity;
import com.cyn.mall.devtemplate.entity.OrderEntity;
import com.cyn.mall.devtemplate.service.AddressService;
import com.cyn.mall.devtemplate.service.CartService;
import com.cyn.mall.devtemplate.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.UserService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;

import javax.servlet.http.HttpServletRequest;


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

    @Autowired
    private OrderService orderService;

    /**
     * 用户注册
     *
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST, name = "用户注册")
    public RT postRegister(@RequestParam Map<String, Object> params) {
        RT rt = new RT();
        String inputUserName = (String) params.get("userName");
        String inputUserPwd = (String) params.get("userPwd");
        QueryWrapper<UserEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name", inputUserName);
        List<UserEntity> list = userService.list(queryWrapper);
        if (list.size() > 0) {
            rt.setResult("err");
            rt.setStatus("1");
            rt.setMsg("账号已存在");
        } else {
            UserEntity userEntityAdd = new UserEntity();
            userEntityAdd.setAvatar("https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png");
            userEntityAdd.setName("游客" + DateUtils.getCurrDate() + DateUtils.getCurrTime());
            userEntityAdd.setUserName(inputUserName);
            userEntityAdd.setUserPwd(inputUserPwd);
            boolean save = userService.save(userEntityAdd);
            if (save) {
                rt.setResult("suc");
                rt.setStatus("0");
                rt.setMsg("注册成功");
            }
        }
        return rt;
    }

    /**
     * 删除订单
     *
     * @return
     */
    @RequestMapping(value = "/delOrder", method = RequestMethod.POST, name = "删除订单")
    public RT delOrder(@RequestParam Map<String, Object> params, HttpServletRequest httpRequest) {
        RT rt = new RT();
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpRequest);
        Long inputOrderId = Long.parseLong((String) params.get("orderId"));
        QueryWrapper<OrderEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userIdforReqCookies).eq("order_id", inputOrderId);
        boolean remove = orderService.remove(queryWrapper);
        if (remove) {
            rt.setResult("suc");
            rt.setStatus("0");
            rt.setMsg("");
        } else {
            rt.setResult("err");
            rt.setStatus("1");
            rt.setMsg("");
        }
        return rt;
    }

    /**
     * 订单列表
     *
     * @return
     */
    @RequestMapping(value = "/orderList", method = RequestMethod.POST, name = "订单列表")
    public RT postPayMent(HttpServletRequest httpRequest) {
        RT rt = new RT();
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpRequest);
        QueryWrapper<OrderEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", userIdforReqCookies);
        List<OrderEntity> orderEntityList = orderService.list(queryWrapper);
        rt.setResult(orderEntityList);
        rt.setStatus("0");
        rt.setMsg("");
        return rt;
    }

    /**
     * 生成订单
     *
     * @return
     */
    @RequestMapping(value = "/payMent", method = RequestMethod.POST, name = "支付")
    public RT postPayMent(@RequestParam Map<String, Object> params, HttpServletRequest httpRequest) {
        RT rt = new RT();
        Long inputAddressId = Long.parseLong((String) params.get("addressId"));
        long inputOrderTotal = Long.parseLong((String) params.get("orderTotal"));
        Integer inputProductId = Integer.parseInt((String) params.get("productId"));
        Integer inputProductNum = Integer.parseInt((String) params.get("productNum"));
        //addressId, orderTotal, productId, productNum
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpRequest);
        QueryWrapper<AddressEntity> addressEntityQueryWrapper = new QueryWrapper<>();
        addressEntityQueryWrapper.eq("user_id", userIdforReqCookies);
        // 当前用户的收货地址
        List<AddressEntity> addressEntityList = addressService.list(addressEntityQueryWrapper);
        QueryWrapper<CartEntity> cartEntityQueryWrapper = new QueryWrapper<>();
        cartEntityQueryWrapper.eq("user_id", userIdforReqCookies);
        // 当前用户的购物车列表
        List<CartEntity> cartEntityList = cartService.list(cartEntityQueryWrapper);

        //生成订单
        addressEntityList.forEach(addressEntity -> {
            if (addressEntity.getAddressId().equals(inputAddressId)) {
                OrderEntity orderEntity = new OrderEntity();
                orderEntity.setUserId(userIdforReqCookies.intValue());
                orderEntity.setAddressId(inputAddressId.intValue());
                orderEntity.setOrderGoods(JSONObject.toJSONString(cartEntityList));
                orderEntity.setOrderTotal(BigDecimal.valueOf(inputOrderTotal));
                boolean save = orderService.save(orderEntity);
                rt.setMsg("suc");
                rt.setStatus("0");
                rt.setResult("");
            }
        });
        return rt;
    }

    /**
     * 删除收获地址
     *
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "/addressDel", method = RequestMethod.POST, name = "删除收获地址删除收获地址")
    public RT delAddressList(HttpServletRequest httpServletRequest, @RequestParam Map<String, Object> params) {
        RT rt = new RT();
        Integer inputAddressId = Integer.parseInt((String) params.get("addressId"));
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpServletRequest);
        if (userIdforReqCookies != null && inputAddressId > 0) {
            boolean del = addressService.removeById(inputAddressId);
            if (del) {
                rt.setMsg("删除成功");
                rt.setStatus("0");
                rt.setResult("");
            } else {
                rt.setMsg("删除失败");
                rt.setStatus("1");
                rt.setResult("");
            }
        } else {
            rt.setMsg("未登录");
            rt.setStatus("1");
            rt.setResult("");
        }
        return rt;
    }

    /**
     * 新增收获地址
     *
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "/addressAdd", method = RequestMethod.POST, name = "修改收获地址")
    public RT postAddressList(HttpServletRequest httpServletRequest, @RequestParam Map<String, Object> params) {
        RT rt = new RT();
        String inputUserName = (String) params.get("userName");
        String inputTel = (String) params.get("tel");
        String inputStreetName = (String) params.get("streetName");
        String inputIsDefault = (String) params.get("isDefault");
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpServletRequest);
        if (userIdforReqCookies != null && !inputUserName.trim().isEmpty() && !inputStreetName.trim().isEmpty()) {
            AddressEntity addressEntity = new AddressEntity();
            addressEntity.setUserId(Long.toString(userIdforReqCookies));
            addressEntity.setUserName(inputUserName);
            addressEntity.setTel(inputTel);
            addressEntity.setStreetName(inputStreetName);
            addressEntity.setIsDefault(inputIsDefault);
            boolean add = addressService.save(addressEntity);
            if (add) {
                rt.setMsg("suc");
                rt.setStatus("0");
                rt.setResult("");
            } else {
                rt.setMsg("新增失败");
                rt.setStatus("1");
                rt.setResult("");
            }
        } else {
            rt.setMsg("未登录");
            rt.setStatus("1");
            rt.setResult("");
        }
        return rt;
    }

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
            } else {
                rt.setMsg("更新失败");
                rt.setStatus("1");
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
            } else {
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
    @RequestMapping(value = "/cartList", method = RequestMethod.POST, name = "查询购物车")
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
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "/userInfo", method = RequestMethod.POST)
    public RT getUserInfo(HttpServletRequest httpServletRequest) {
        RT rt = new RT();
        try {
            Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpServletRequest);
            UserEntity userEntity = userService.getById(userIdforReqCookies);
            if (userEntity != null) {
                rt.setMsg("suc");
                rt.setResult(userEntity);
                rt.setStatus("0");
            } else {
                rt.setMsg("未登录");
                rt.setStatus("1");
            }
        } catch (Exception e) {
            rt.setMsg("未登录");
            rt.setStatus("1");
        }
        return rt;
    }

    /**
     * 登陆
     *
     * @param params
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public RT login(@RequestBody  Map<String, Object> params) {
        RT rt = new RT();
        String userName = (String) params.get("userName");
        String userPwd = (String) params.get("userPwd");
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
