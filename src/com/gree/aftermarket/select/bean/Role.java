package com.gree.aftermarket.select.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


public class Role {
    private String id;
    private String rolename;
    private String description;
    private String creater;
    private Date createDate;
    private String lastUpdate;
    private String lastUpdateDate;
    private Set<User> userid;
    private Set<Permission> permissions = new HashSet<Permission>();
    
	public Set<User> getUserid() {
		return userid;
	}
	public void setUserid(Set<User> userid) {
		this.userid = userid;
	}
	public Set<Permission> getPermissions() {
		return permissions;
	}
	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}
	public Role() {
		super();
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public String getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(String lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	public String getLastUpdateDate() {
		return lastUpdateDate;
	}
	public void setLastUpdateDate(String lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}
}
