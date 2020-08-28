package com.cyn.mall.devtemplate.controller;

import com.cyn.mall.devtemplate.bean.RTD;
import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

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
    public RTD getMemberPage() {
        RTD rtd = new RTD();
        List<UserEntity> list = userService.list();
        rtd.setData(list);
        rtd.setCode(20000);
        return rtd;
    }
}
