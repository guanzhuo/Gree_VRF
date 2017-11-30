package com.gree.aftermarket.select.service;

import java.util.List;

import com.gree.aftermarket.select.bean.User;

public interface AccountService {
    //根据登陆的用户查询后台用户
	public List<User> userList(String id);
	
}
