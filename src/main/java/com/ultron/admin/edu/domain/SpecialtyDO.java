package com.ultron.admin.edu.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;



/**
 * 专业管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2019-01-17 18:12:57
 */
@Data
public class SpecialtyDO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//ID
	private Long id;
	//学校ID
	private Long universityId;
	//专业名称
	private String name;
	//学历 edu_qualification
	private String qualification;
	//学制
	private String academicYear;
	//专业类型 edu_specialty_type
	private String type;
	//专业介绍
	private String introduction;
	//备注
	private String remark;
	//状态 1有效 -1删除
	private Integer status;
	//创建时间
	private Date createTime;
	//修改时间
	private Date updateTime;
	//推荐权重（越大排序越前）
	private Integer proposalWeight;
}
