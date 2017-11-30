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
	private Date lastUpdateDate;
	private User users;
	private Set<RolePermission> rolePermissions = new HashSet<RolePermission>();

	public Role(String id, String rolename, String description, String creater, Date createDate, String lastUpdate,
			Date lastUpdateDate, User users, Set<RolePermission> rolePermissions) {
		super();
		this.id = id;
		this.rolename = rolename;
		this.description = description;
		this.creater = creater;
		this.createDate = createDate;
		this.lastUpdate = lastUpdate;
		this.lastUpdateDate = lastUpdateDate;
		this.users = users;
		this.rolePermissions = rolePermissions;
	}

	public Set<RolePermission> getRolePermissions() {
		return rolePermissions;
	}

	public void setRolePermissions(Set<RolePermission> rolePermissions) {
		this.rolePermissions = rolePermissions;
	}

	public Role() {
		super();
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
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

	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
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

}
