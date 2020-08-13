package com.cyn.mall.devtemplate.bean;

import lombok.Data;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.bean
 * @Date 2020/8/13 15:41
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Data
public class AdminIndexMsg {
    /**
     * 本周新增订单数
     */
    private Integer weekNewOrder;
    /**
     * 所有商品数
     */
    private Integer allGoods;
    /**
     * 所有订单数
     */
    private Integer allOrders;
    /**
     * 本周销售额
     */
    private Integer weekIncome;
}
