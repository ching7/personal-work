package com.cyn.mall.devtemplate.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * 
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-27 14:34:00
 */
@Data
@TableName("sys_arg")
public class ArgEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private String sysName;
	/**
	 * 
	 */
	private String sysUserCount;
	/**
	 * 
	 */
	private String sysDescription;
	/**
	 * 
	 */
	private Date initDate;
	/**
	 * 
	 */
	private Integer sysViewsCount;

}
