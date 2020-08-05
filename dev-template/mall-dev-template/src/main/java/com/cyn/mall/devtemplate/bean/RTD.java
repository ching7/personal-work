package com.cyn.mall.devtemplate.bean;

import lombok.Data;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.bean
 * @Date 2020/8/5 14:39
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Data
public class RTD {
    private static final long serialVersionUID = 1L;

    private Integer code;
    private Object data;
    private String status;
}
