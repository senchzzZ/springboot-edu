package com.ultron.admin.edu.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * 学校管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-05 17:33:53
 */
@Data
public class University implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//ID
	private Long id;
	//学校名称
	private String name;
	//标题
	private String title;
	//关键词
	private String keyword;
	//描述
	private String description;
	//是否推荐 0否1是
	private Integer ifProposal;
	//老师
	private String teacher;
	//电话
	private String phone;
	//QQ
	private String qq;
	//邮箱
	private String email;
	//微信
	private String wechat;
	//报读人数,单位万
	private String remark;
	//状态
	private Integer status;
	//学校类型
	private Integer type;
	//地址
	private String address;
	//地区
	private String area;
	//logo
	private String logo;
	//banner
	private String banner;
	//学校介绍
	private String introduction;
	//报名条件
	private String condition;
	//创建时间
	private Date createTime;
	//修改时间
	private Date updateTime;

	//专业
	private List<Specialty> specialties;

}
