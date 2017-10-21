package com.gree.aftermarket.select.service.impl;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gree.aftermarket.select.base.BaseDao;
import com.gree.aftermarket.select.base.BaseService;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.dao.UserDao;
import com.gree.aftermarket.select.service.TestService;

@Service("testService")
public class TestServiceImpl extends BaseService<User> implements TestService{
	@Resource(name="userDao")
    private UserDao userDao;
	@Resource(name = "userDao")  
    public void setDao(BaseDao<User> dao) {  
        super.setBaseDao(dao);  
    }
	@Transactional
	public void saveTwoUser() {
		User user = new User(9, "ceshi");
		userDao.save(user);
	}
}
