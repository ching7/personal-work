package com.cyn.mall.devtemplate.bean;

import lombok.Data;

import java.util.List;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.bean
 * @Date 2020/9/1 14:08
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Data
public
class PrdCate {
    private Integer id;
    private String label;
    private List<PrdCate> children;
}
