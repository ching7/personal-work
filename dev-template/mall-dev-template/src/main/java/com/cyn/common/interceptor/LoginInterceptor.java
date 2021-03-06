package com.cyn.common.interceptor;

import com.cyn.common.bean.InterceptorFilterConfig;
import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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


    /**
     * 不拦截的请求
     */
    @Autowired
    private InterceptorFilterConfig interceptorFilterConfig;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 配置拦截器请求例外
        String requestUrl = request.getRequestURI();
        List<String> includeUrl = interceptorFilterConfig.getInclude();
        if (includeUrl.contains(requestUrl)) {
            return true;
        }
        // oss
        if (requestUrl.contains("oss")) {
            return true;
        }
        // 后台-swagger
        if (requestUrl.contains("admin") || requestUrl.contains("webjars")) {
            return true;
        }
        // fixme token验证
//        // 后台商城管理
//        Integer adminTokenforReqCookies = userCtrl.getAdminTokenforReqCookies(request);
//        if (adminTokenforReqCookies == null) {
//            throw new Exception("未登陆");
//        }
//        // 前台商城
//        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(request);
//        if (userIdforReqCookies == null) {
//            throw new Exception("未登陆");
//        }
        return true;
    }
}
