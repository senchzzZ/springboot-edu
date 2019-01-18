package com.ultron.admin.edu.domain;

import java.io.Serializable;
import java.util.Date;



/**
 * 学校管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-05 17:33:53
 */
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
	//备注
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

	/**
	 * 设置：ID
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 获取：ID
	 */
	public Long getId() {
		return id;
	}
	/**
	 * 设置：学校名称
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：学校名称
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：标题
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * 获取：标题
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * 设置：关键词
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	/**
	 * 获取：关键词
	 */
	public String getKeyword() {
		return keyword;
	}
	/**
	 * 设置：描述
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * 获取：描述
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * 设置：是否推荐 0否1是
	 */
	public void setIfProposal(Integer ifProposal) {
		this.ifProposal = ifProposal;
	}
	/**
	 * 获取：是否推荐 0否1是
	 */
	public Integer getIfProposal() {
		return ifProposal;
	}
	/**
	 * 设置：老师
	 */
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	/**
	 * 获取：老师
	 */
	public String getTeacher() {
		return teacher;
	}
	/**
	 * 设置：电话
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * 获取：电话
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * 设置：QQ
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}
	/**
	 * 获取：QQ
	 */
	public String getQq() {
		return qq;
	}
	/**
	 * 设置：邮箱
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * 获取：邮箱
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * 设置：微信
	 */
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	/**
	 * 获取：微信
	 */
	public String getWechat() {
		return wechat;
	}
	/**
	 * 设置：备注
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}
	/**
	 * 获取：备注
	 */
	public String getRemark() {
		return remark;
	}
	/**
	 * 设置：状态
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * 获取：状态
	 */
	public Integer getStatus() {
		return status;
	}
	/**
	 * 设置：学校类型
	 */
	public void setType(Integer type) {
		this.type = type;
	}
	/**
	 * 获取：学校类型
	 */
	public Integer getType() {
		return type;
	}
	/**
	 * 设置：地址
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * 获取：地址
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * 设置：地区
	 */
	public void setArea(String area) {
		this.area = area;
	}
	/**
	 * 获取：地区
	 */
	public String getArea() {
		return area;
	}
	/**
	 * 设置：logo
	 */
	public void setLogo(String logo) {
		this.logo = logo;
	}
	/**
	 * 获取：logo
	 */
	public String getLogo() {
		return logo;
	}
	/**
	 * 设置：banner
	 */
	public void setBanner(String banner) {
		this.banner = banner;
	}
	/**
	 * 获取：banner
	 */
	public String getBanner() {
		return banner;
	}
	/**
	 * 设置：学校介绍
	 */
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	/**
	 * 获取：学校介绍
	 */
	public String getIntroduction() {
		return introduction;
	}
	/**
	 * 设置：报名条件
	 */
	public void setCondition(String condition) {
		this.condition = condition;
	}
	/**
	 * 获取：报名条件
	 */
	public String getCondition() {
		return condition;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * 获取：创建时间
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * 设置：修改时间
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	/**
	 * 获取：修改时间
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
}
