package com.cyn.common.interceptor;

import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.common.interceptor
 * @Date 2020/7/28 18:53
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    UserCtrl userCtrl;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(request);
        if (userIdforReqCookies == null) {
            throw new Exception("未登陆");
        }
        return true;
    }
}
