package com.syaccp.pojo;

import java.util.Date;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class News implements java.io.Serializable {

	// Fields

	private Long id;
	private String title;
	private String content;
	private Date createtime;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** full constructor */
	public News(String title, String content, Date createtime) {
		this.title = title;
		this.content = content;
		this.createtime = createtime;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}