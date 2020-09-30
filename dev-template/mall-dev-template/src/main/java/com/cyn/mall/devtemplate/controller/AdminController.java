package com.cyn.mall.devtemplate.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;
import com.cyn.mall.devtemplate.bean.RTD;
import com.cyn.mall.devtemplate.ctrl.PassWordHandlerCtrl;
import com.cyn.mall.devtemplate.ctrl.SysArgCtrl;
import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import com.cyn.mall.devtemplate.entity.AdminEntity;
import com.cyn.mall.devtemplate.entity.OrderEntity;
import com.cyn.mall.devtemplate.service.AdminService;
import com.cyn.mall.devtemplate.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.cyn.mall.devtemplate.constants.Constants.pageSize;

//import org.apache.shiro.authz.annotation.RequiresPermissions;


/**
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-08-05 11:22:10
 */
@RestController
@RequestMapping("/api/admin")
public class AdminController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private UserCtrl userCtrl;

    @Value("${mall.private-key:test}")
    private String privateKey;

    @Autowired
    private SysArgCtrl sysArgCtrl;

    @RequestMapping(value = "/getOrderPage", method = RequestMethod.GET)
    public RTD getOrderPage() {
        RTD rtd = new RTD();
        List<OrderEntity> list = orderService.list();
        rtd.setData(list);
        rtd.setCode(20000);
        return rtd;
    }

    @RequestMapping(value = "/getSearchOrderPage", method = RequestMethod.GET)
    public RTD getSearchOrderPage(@RequestParam Map<String, Object> params) {
        String currPage = params.get("currPage").toString();
        String pageSize = params.get("pageSize").toString();
        String orderId = params.get("orderId").toString();

        RTD rtd = new RTD();
        QueryWrapper<OrderEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("order_id", orderId);
        queryWrapper.orderByDesc("order_id");
        IPage<OrderEntity> iPage = new Page<OrderEntity>(Long.parseLong(currPage), Long.parseLong(pageSize));
        IPage<OrderEntity> orderEntityIPage = orderService.page(iPage, queryWrapper);

        List<OrderEntity> list = orderEntityIPage.getRecords();
        rtd.setStatus("suc");
        rtd.setCode(20000);
        rtd.setData(list);
        rtd.setTotalCount(orderEntityIPage.getTotal());
        return rtd;
    }


    /**
     * 订单列表
     *
     * @return
     */
    @RequestMapping(value = "/orderListAll", method = RequestMethod.GET, name = "订单列表")
    public RTD postPayMent(HttpServletRequest httpRequest) {
        Map<String, Object> resMap = new HashMap<>();
        RTD rt = new RTD();
        IPage<OrderEntity> iPage = new Page<OrderEntity>(1, Long.parseLong(pageSize));
        QueryWrapper<OrderEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_date");
        IPage<OrderEntity> orderEntityList = orderService.page(iPage, queryWrapper);
        resMap.put("items", orderEntityList.getRecords());
        resMap.put("total", orderEntityList.getSize());
        rt.setData(resMap);
        rt.setCode(20000);
        return rt;
    }

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
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    //@RequiresPermissions("devtemplate:admin:list")
    public RTD adminLogout(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        RTD rtd = new RTD();
        Integer adminTokenforReqCookies = userCtrl.getAdminTokenforReqCookies(httpServletRequest);
        if (adminTokenforReqCookies != null) {
            Cookie cookie = new Cookie("token", null);
            cookie.setPath("/");
            cookie.setMaxAge(0);
            httpServletResponse.addCookie(cookie);
            rtd.setData("");
            rtd.setCode(20000);
        } else {
            rtd.setData("");
            rtd.setCode(50008);
        }
        return rtd;
    }

    /**
     * 管理员登陆
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    //@RequiresPermissions("devtemplate:admin:list")
    public RTD adminLogin(@RequestBody Map<String, Object> params, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        RTD rtd = new RTD();
        Map<String, Object> data = new HashMap<>();
        String userName = (String) params.get("username");
        String passWord = (String) params.get("password");
        // 密码RSA私钥解密
        String decryptPwd = PassWordHandlerCtrl.decrypt(passWord, privateKey);
        // 解密出来再进行md5加密：密码md5 32位 存入数据库
        String pwdMd532 = PassWordHandlerCtrl.getMd532(decryptPwd);
        QueryWrapper<AdminEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name", userName).eq("user_password", pwdMd532);
        AdminEntity adminEntity = adminService.getOne(queryWrapper);
        if (adminEntity != null) {
            Cookie cookie = new Cookie("token", adminEntity.getAdminId().toString());
            cookie.setPath("/");
            cookie.setMaxAge(7200);
            httpServletResponse.addCookie(cookie);
            sysArgCtrl.addSysViewCount();
            data.put("token", adminEntity.getAdminId());
            rtd.setData(data);
            rtd.setCode(20000);
        } else {
            rtd.setMessage("登陆失败，账号或者密码错误");
            rtd.setCode(50000);
        }

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
