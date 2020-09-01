package com.cyn.mall.devtemplate.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 商品分类表
 * 
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-01 10:27:01
 */
@Data
@TableName("prd_category")
public class PrdCategoryEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer catId;
	/**
	 * 父节点
	 */
	private Integer parentId;
	/**
	 * 
	 */
	private String name;
	/**
	 * 
	 */
	private Integer status;
	/**
	 * 
	 */
	private Integer sortOrder;
	/**
	 * 
	 */
	private Integer isParent;
	/**
	 * 
	 */
	private String icon;
	/**
	 * 
	 */
	private Date created;
	/**
	 * 
	 */
	private Date updated;

}
