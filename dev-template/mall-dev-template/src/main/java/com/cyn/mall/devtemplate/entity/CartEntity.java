package com.cyn.mall.devtemplate.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * 
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-07-25 14:59:41
 */
@Data
@TableName("sys_cart")
public class CartEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 购物车id
	 */
	@TableId
	private Long cartId;
	/**
	 *  产品id
	 */
	private Integer productId;
	/**
	 * 产品图片
	 */
	private String productImg;
	/**
	 * 产品名称
	 */
	private String productName;
	/**
	 * 
	 */
	private String checked;
	/**
	 * 产品数量
	 */
	private Integer productNum;
	/**
	 * 产品价格
	 */
	private BigDecimal productPrice;

}
