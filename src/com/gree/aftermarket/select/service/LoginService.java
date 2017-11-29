package com.gree.aftermarket.select.service;

import java.util.List;

import com.gree.aftermarket.select.bean.Permission;
import com.gree.aftermarket.select.bean.User;

public interface LoginService {
    public User loginInfo(String email);
    //获取登录用户的权限信息
    public List<Permission> userPermission();
	public void logOut();
}
