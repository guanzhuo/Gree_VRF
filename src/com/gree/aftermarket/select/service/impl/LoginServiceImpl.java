package com.gree.aftermarket.select.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gree.aftermarket.select.base.BaseDao;
import com.gree.aftermarket.select.base.BaseService;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.dao.UserDao;
import com.gree.aftermarket.select.service.LoginService;
@Service("loginService")
public class LoginServiceImpl extends BaseService<User> implements LoginService{
	@Resource(name="userDao")
    private UserDao userDao;
	@Resource(name = "userDao")
    public void setDao(BaseDao<User> dao) {  
        super.setBaseDao(dao);
    }
	@Transactional
	public String loginInfo(String email, String password) {
        System.out.print(email+password);
		return "success";
	}

}
