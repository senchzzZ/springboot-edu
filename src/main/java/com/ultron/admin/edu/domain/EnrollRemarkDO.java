package com.ultron.admin.edu.domain;

import java.io.Serializable;
import java.util.Date;



/**
 * 报名备注信息
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-03 19:03:34
 */
public class EnrollRemarkDO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//ID
	private Long id;
	//姓名
	private String name;
	//报名ID
	private Long enrollId;
	//报名费用
	private Double enrollFee;
	//第一学年学费
	private Double firstFee;
	//第二学年学费
	private Double secondFee;
	//第三学年学费
	private Double thirdFee;
	//服务项目
	private String serviceItem;
	//备注
	private String remark;
	//状态
	private Integer status;
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
	 * 设置：姓名
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：姓名
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：报名ID
	 */
	public void setEnrollId(Long enrollId) {
		this.enrollId = enrollId;
	}
	/**
	 * 获取：报名ID
	 */
	public Long getEnrollId() {
		return enrollId;
	}
	/**
	 * 设置：报名费用
	 */
	public void setEnrollFee(Double enrollFee) {
		this.enrollFee = enrollFee;
	}
	/**
	 * 获取：报名费用
	 */
	public Double getEnrollFee() {
		return enrollFee;
	}
	/**
	 * 设置：第一学年学费
	 */
	public void setFirstFee(Double firstFee) {
		this.firstFee = firstFee;
	}
	/**
	 * 获取：第一学年学费
	 */
	public Double getFirstFee() {
		return firstFee;
	}
	/**
	 * 设置：第二学年学费
	 */
	public void setSecondFee(Double secondFee) {
		this.secondFee = secondFee;
	}
	/**
	 * 获取：第二学年学费
	 */
	public Double getSecondFee() {
		return secondFee;
	}
	/**
	 * 设置：第三学年学费
	 */
	public void setThirdFee(Double thirdFee) {
		this.thirdFee = thirdFee;
	}
	/**
	 * 获取：第三学年学费
	 */
	public Double getThirdFee() {
		return thirdFee;
	}
	/**
	 * 设置：服务项目
	 */
	public void setServiceItem(String serviceItem) {
		this.serviceItem = serviceItem;
	}
	/**
	 * 获取：服务项目
	 */
	public String getServiceItem() {
		return serviceItem;
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
