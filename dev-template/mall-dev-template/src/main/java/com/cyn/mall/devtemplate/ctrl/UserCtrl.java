package com.cyn.mall.devtemplate.ctrl;

import com.cyn.common.exception.RRException;
import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import static com.cyn.mall.devtemplate.constants.Constants.userIdStr;

/**
 * @author chenyanan
 * Created by chenyanan on 2020/7/27
 */
@Service
public class UserCtrl {
    @Autowired
    private UserService userService;

    /**
     * 从cookies获取用户id
     *
     * @param httpServletRequest
     * @return
     */
    public Long getUserIdforReqCookies(HttpServletRequest httpServletRequest) {
        Cookie[] cookies = httpServletRequest.getCookies();
        for (Cookie cookie : cookies) {
            if ("userId".equals(cookie.getName())) {
                Integer inputUserId = Integer.parseInt(cookie.getValue());
                // 查询当前用户是否存在
                UserEntity byId = userService.getById(inputUserId);
                if (byId != null) {
                    return byId.getUserId();
                } else {
                    throw new RRException("用户不存在");
                }
            }
        }
        throw new RRException("未登录");
    }
}
