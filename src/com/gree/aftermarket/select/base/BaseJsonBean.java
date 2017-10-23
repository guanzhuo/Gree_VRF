package com.gree.aftermarket.select.base;

public class BaseJsonBean {
	private int statusCode = 0;//正常
	private String msg;
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
