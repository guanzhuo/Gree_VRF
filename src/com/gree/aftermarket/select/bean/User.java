package com.gree.aftermarket.select.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

/**
 * @author gz
 * 2017年10月23日上午10:46:29
 * 后台用户实体类
 */
public class User {
	private String id;
    private String name;
    private String email;
    private String pwd;
    private String phone;
    private String address;
    private String creater;
    private Date createDate;
    private Integer delFlag;//删除标记
    private String customerId;
    private Role roles;
    
	public User() {
    	super();
    }
    public User(String id,String name){
    	this.id = id;
    	this.name =name;
    }
    
	public User(String name){
    	this.name = name;
    }
	public User(String id, String name, String email, String pwd, String phone, String address, String creater,
			Date createDate, Integer delFlag, String customerId, Role roles) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.phone = phone;
		this.address = address;
		this.creater = creater;
		this.createDate = createDate;
		this.delFlag = delFlag;
		this.customerId = customerId;
		this.roles = roles;
	}
	public Role getRoles() {
		return roles;
	}
	public void setRoles(Role roles) {
		this.roles = roles;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCreater() {
		return creater;
	}
	public void setCreater(String creater) {
		this.creater = creater;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
}
