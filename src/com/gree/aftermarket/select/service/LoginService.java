package com.gree.aftermarket.select.service;

import com.gree.aftermarket.select.bean.User;

public interface LoginService {
    public User loginInfo(String email);
    //获取登录用户的权限信息
    public User userPermission();
	public void logOut();
}
