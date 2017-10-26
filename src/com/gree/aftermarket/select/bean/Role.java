package com.gree.aftermarket.select.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

public class Role {
	private String id;
	private String rolename;
	private String description;
	private String creater;
	private Date createDate;
	private String lastUpdate;
	private String lastUpdateDate;
	private User users;
	private Set<RolePermission> rolePermissions;

	public Role(String id, String rolename, String description, String creater, Date createDate, String lastUpdate,
			String lastUpdateDate, User users, Set<RolePermission> rolePermissions) {
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
