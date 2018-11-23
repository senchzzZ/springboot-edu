package com.bootdo.edu.domain;

import java.io.Serializable;
import java.util.Date;



/**
 * 报名管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-11-23 20:51:01
 */
public class EnrollInfoDO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//ID
	private Long id;
	//姓名
	private String name;
	//性别 0女1男
	private Integer sex;
	//身份证号
	private String idCard;
	//政治面貌
	private String political;
	//省
	private Integer province;
	//市
	private Integer city;
	//目前所在地
	private String address;
	//报考学校
	private String school;
	//报考专业
	private String specialty;
	//报考形式
	private Integer enrollType;
	//目前学历
	private Integer qualification;
	//毕业院校
	private String graduationSchool;
	//毕业专业
	private String graduatiSpecialty;
	//职业类别
	private Integer occupationType;
	//考生类别
	private Integer studentType;
	//照顾对象
	private Integer privilegeType;
	//民族
	private Integer nation;
	//电话
	private String phone;
	//QQ
	private String qq;
	//邮箱
	private String email;
	//微信
	private String wechat;
	//是否快递 0否 1是
	private Integer ifDelivery;
	//快递名称
	private String deliveryName;
	//快递时间
	private Date deliveryTime;
	//快递单号
	private String deliveryNum;
	//是否付款 0否1是
	private Integer ifPay;
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
	 * 设置：性别 0女1男
	 */
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	/**
	 * 获取：性别 0女1男
	 */
	public Integer getSex() {
		return sex;
	}
	/**
	 * 设置：身份证号
	 */
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	/**
	 * 获取：身份证号
	 */
	public String getIdCard() {
		return idCard;
	}
	/**
	 * 设置：政治面貌
	 */
	public void setPolitical(String political) {
		this.political = political;
	}
	/**
	 * 获取：政治面貌
	 */
	public String getPolitical() {
		return political;
	}
	/**
	 * 设置：省
	 */
	public void setProvince(Integer province) {
		this.province = province;
	}
	/**
	 * 获取：省
	 */
	public Integer getProvince() {
		return province;
	}
	/**
	 * 设置：市
	 */
	public void setCity(Integer city) {
		this.city = city;
	}
	/**
	 * 获取：市
	 */
	public Integer getCity() {
		return city;
	}
	/**
	 * 设置：目前所在地
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * 获取：目前所在地
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * 设置：报考学校
	 */
	public void setSchool(String school) {
		this.school = school;
	}
	/**
	 * 获取：报考学校
	 */
	public String getSchool() {
		return school;
	}
	/**
	 * 设置：报考专业
	 */
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	/**
	 * 获取：报考专业
	 */
	public String getSpecialty() {
		return specialty;
	}
	/**
	 * 设置：报考形式
	 */
	public void setEnrollType(Integer enrollType) {
		this.enrollType = enrollType;
	}
	/**
	 * 获取：报考形式
	 */
	public Integer getEnrollType() {
		return enrollType;
	}
	/**
	 * 设置：目前学历
	 */
	public void setQualification(Integer qualification) {
		this.qualification = qualification;
	}
	/**
	 * 获取：目前学历
	 */
	public Integer getQualification() {
		return qualification;
	}
	/**
	 * 设置：毕业院校
	 */
	public void setGraduationSchool(String graduationSchool) {
		this.graduationSchool = graduationSchool;
	}
	/**
	 * 获取：毕业院校
	 */
	public String getGraduationSchool() {
		return graduationSchool;
	}
	/**
	 * 设置：毕业专业
	 */
	public void setGraduatiSpecialty(String graduatiSpecialty) {
		this.graduatiSpecialty = graduatiSpecialty;
	}
	/**
	 * 获取：毕业专业
	 */
	public String getGraduatiSpecialty() {
		return graduatiSpecialty;
	}
	/**
	 * 设置：职业类别
	 */
	public void setOccupationType(Integer occupationType) {
		this.occupationType = occupationType;
	}
	/**
	 * 获取：职业类别
	 */
	public Integer getOccupationType() {
		return occupationType;
	}
	/**
	 * 设置：考生类别
	 */
	public void setStudentType(Integer studentType) {
		this.studentType = studentType;
	}
	/**
	 * 获取：考生类别
	 */
	public Integer getStudentType() {
		return studentType;
	}
	/**
	 * 设置：照顾对象
	 */
	public void setPrivilegeType(Integer privilegeType) {
		this.privilegeType = privilegeType;
	}
	/**
	 * 获取：照顾对象
	 */
	public Integer getPrivilegeType() {
		return privilegeType;
	}
	/**
	 * 设置：民族
	 */
	public void setNation(Integer nation) {
		this.nation = nation;
	}
	/**
	 * 获取：民族
	 */
	public Integer getNation() {
		return nation;
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
	 * 设置：是否快递 0否 1是
	 */
	public void setIfDelivery(Integer ifDelivery) {
		this.ifDelivery = ifDelivery;
	}
	/**
	 * 获取：是否快递 0否 1是
	 */
	public Integer getIfDelivery() {
		return ifDelivery;
	}
	/**
	 * 设置：快递名称
	 */
	public void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
	}
	/**
	 * 获取：快递名称
	 */
	public String getDeliveryName() {
		return deliveryName;
	}
	/**
	 * 设置：快递时间
	 */
	public void setDeliveryTime(Date deliveryTime) {
		this.deliveryTime = deliveryTime;
	}
	/**
	 * 获取：快递时间
	 */
	public Date getDeliveryTime() {
		return deliveryTime;
	}
	/**
	 * 设置：快递单号
	 */
	public void setDeliveryNum(String deliveryNum) {
		this.deliveryNum = deliveryNum;
	}
	/**
	 * 获取：快递单号
	 */
	public String getDeliveryNum() {
		return deliveryNum;
	}
	/**
	 * 设置：是否付款 0否1是
	 */
	public void setIfPay(Integer ifPay) {
		this.ifPay = ifPay;
	}
	/**
	 * 获取：是否付款 0否1是
	 */
	public Integer getIfPay() {
		return ifPay;
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
