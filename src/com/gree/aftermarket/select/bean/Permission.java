package com.gree.aftermarket.select.bean;

import java.util.HashSet;
import java.util.Set;


public class Permission {
    private String id;
    private String permissionName;//权限名称
    private String description;//描述
    private String parentId;//权限父类ID
    private String url;//对应的界面
    private Set<RolePermission> rolePermissions = new HashSet<RolePermission>();
    
	public Set<RolePermission> getRolePermissions() {
		return rolePermissions;
	}
	public void setRolePermissions(Set<RolePermission> rolePermissions) {
		this.rolePermissions = rolePermissions;
	}
	public Permission(String id, String permissionName, String description, String parentId, String url,
			Set<RolePermission> rolePermissions) {
		super();
		this.id = id;
		this.permissionName = permissionName;
		this.description = description;
		this.parentId = parentId;
		this.url = url;
		this.rolePermissions = rolePermissions;
	}
	public Permission() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPermissionName() {
		return permissionName;
	}
	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
    
    
}
