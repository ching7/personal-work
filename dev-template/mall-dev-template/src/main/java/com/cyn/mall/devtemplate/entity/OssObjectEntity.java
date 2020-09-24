package com.cyn.mall.devtemplate.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 对象存储信息表
 * 
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-24 16:50:44
 */
@Data
@TableName("oss_object")
public class OssObjectEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer fileId;
	/**
	 * 
	 */
	private String createDate;
	/**
	 * 
	 */
	private String createTime;
	/**
	 * 
	 */
	private String filePath;
	/**
	 * 
	 */
	private String fileAllPath;
	/**
	 * 
	 */
	private String fileName;
	/**
	 * 
	 */
	private String fileMd5;
	/**
	 * 
	 */
	private Double fileSize;

}
