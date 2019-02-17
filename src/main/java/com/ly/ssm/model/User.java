package com.ly.ssm.model;


import java.util.Date;

/**
 *
 * 用户
 *
 */

public class User  {

	private Long id;
	/** 用户名 */
	private String username;

	/** 密码 */
	private String password;

	/** 状态 0为正常状态 */
	private Integer status;

	/** 注册时间 */
	private Date regTime;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.username;
	}

	public void setName(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getRegTime() {
		return this.regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}

}
