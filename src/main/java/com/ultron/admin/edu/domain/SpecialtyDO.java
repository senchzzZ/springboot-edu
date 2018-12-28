package com.ultron.admin.edu.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;



/**
 * 专业管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-10 17:27:33
 */
@Data
public class SpecialtyDO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//ID
	private Long id;
	//学校ID
	private Long universityId;
	//学校(冗余)
	private String universityName;
	//专业名称
	private String name;
	//学历
	private String qualification;
	//学制
	private String academicYear;
	//专业类型
	private String type;
	//专业介绍
	private String introduction;
	//备注
	private String remark;
	//状态
	private Integer status;
	//创建时间
	private Date createTime;
	//修改时间
	private Date updateTime;
}
