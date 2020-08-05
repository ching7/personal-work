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
 * @date 2020-08-05 11:22:10
 */
@Data
@TableName("sys_admin")
public class AdminEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer adminId;
	/**
	 * 
	 */
	private String userName;
	/**
	 * 
	 */
	private String userPassword;
	/**
	 * 
	 */
	private String roles;
	/**
	 * 
	 */
	private String name;
	/**
	 * 
	 */
	private String avatar;

}
