package com.cyn.mall.devtemplate.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cyn.mall.devtemplate.bean.RTD;
import com.cyn.mall.devtemplate.entity.ProductEntity;
import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.controller
 * @Date 2020/8/28 17:05
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@RestController
@RequestMapping("/api/member/admin/")
public class MemberController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/getMemberPage", method = RequestMethod.GET)
    public RTD getMemberPage(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        String currPage = params.get("currPage").toString();
        String pageSize = params.get("pageSize").toString();
        String uName = params.get("name").toString();

        QueryWrapper<UserEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("name", uName);
        IPage<UserEntity> iPage = new Page<UserEntity>(Long.parseLong(currPage), Long.parseLong(pageSize));
        IPage<UserEntity> userEntityIPage = userService.page(iPage, queryWrapper);

        List<UserEntity> list = userEntityIPage.getRecords();
        rtd.setStatus("suc");
        rtd.setCode(20000);
        rtd.setData(list);
        rtd.setTotalCount(userEntityIPage.getTotal());
        return rtd;
    }
}
