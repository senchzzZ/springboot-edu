package com.ultron.admin.edu.domain;

import java.io.Serializable;
import java.util.Date;



/**
 * 新闻管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-24 11:53:57
 */
public class NewsDO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//ID
	private Long id;
	//标题
	private String title;
	//关键词
	private String keyword;
	//描述
	private String description;
	//是否推荐 0否1是
	private Integer ifProposal;
	//新闻类别（字典edu_news_type）
	private String newsType;
	//链接地址
	private String newsUrl;
	//状态 1有效 -1删除
	private Integer status;
	//地区
	private String area;
	//相关文件
	private String file;
	//banner
	private String banner;
	//详细介绍
	private String introduction;
	//备注
	private String remark;
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
	 * 设置：新闻类别（字典edu_certificate_type）
	 */
	public void setNewsType(String newsType) {
		this.newsType = newsType;
	}
	/**
	 * 获取：新闻类别（字典edu_certificate_type）
	 */
	public String getNewsType() {
		return newsType;
	}
	/**
	 * 设置：链接地址
	 */
	public void setNewsUrl(String newsUrl) {
		this.newsUrl = newsUrl;
	}
	/**
	 * 获取：链接地址
	 */
	public String getNewsUrl() {
		return newsUrl;
	}
	/**
	 * 设置：状态 1有效 -1删除
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * 获取：状态 1有效 -1删除
	 */
	public Integer getStatus() {
		return status;
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
	 * 设置：相关文件
	 */
	public void setFile(String file) {
		this.file = file;
	}
	/**
	 * 获取：相关文件
	 */
	public String getFile() {
		return file;
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
	 * 设置：详细介绍
	 */
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	/**
	 * 获取：详细介绍
	 */
	public String getIntroduction() {
		return introduction;
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
