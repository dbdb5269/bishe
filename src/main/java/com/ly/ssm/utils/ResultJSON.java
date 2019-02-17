package com.ly.ssm.utils;

import java.util.HashMap;

public class ResultJSON {
	private String msg;
	private Boolean success = true;
	private HashMap<String, Object> entities = new HashMap<String, Object>();

	public ResultJSON(String msg, Boolean success) {
		super();
		this.msg = msg;
		this.success = success;
	}

	public ResultJSON(String msg) {
		super();
		this.msg = msg;
	}

	public ResultJSON() {
		super();
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Boolean getSuccess() {
		return success;
	}

	public ResultJSON setSuccess(Boolean success) {
		this.success = success;
		return this;
	}

	public HashMap<String, Object> getEntities() {
		return entities;
	}

	public void setEntities(HashMap<String, Object> entities) {
		this.entities = entities;
	}

	public ResultJSON addObject(String objName, Object object){
		entities.put(objName, object);
		return this;
	}
}
