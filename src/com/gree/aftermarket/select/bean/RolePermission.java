package com.gree.aftermarket.select.bean;

public class RolePermission {
	private Integer rp_id;
    private Role roleid;
    private Permission permissionid;
    private String parentid;
    
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public Integer getRp_id() {
		return rp_id;
	}
	public void setRp_id(Integer rp_id) {
		this.rp_id = rp_id;
	}
	public Role getRoleid() {
		return roleid;
	}
	public void setRoleid(Role roleid) {
		this.roleid = roleid;
	}
	public Permission getPermissionid() {
		return permissionid;
	}
	public void setPermissionid(Permission permissionid) {
		this.permissionid = permissionid;
	}
	public RolePermission(Integer rp_id, Role roleid, Permission permissionid, String parentid) {
		super();
		this.rp_id = rp_id;
		this.roleid = roleid;
		this.permissionid = permissionid;
		this.parentid = parentid;
	}
    
    
}
