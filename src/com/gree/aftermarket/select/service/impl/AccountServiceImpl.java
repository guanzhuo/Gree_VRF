package com.gree.aftermarket.select.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gree.aftermarket.select.base.BaseDao;
import com.gree.aftermarket.select.base.BaseService;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.dao.UserDao;
import com.gree.aftermarket.select.service.AccountService;

@Service("accountService")
public class AccountServiceImpl extends BaseService<User> implements AccountService{
	@Resource(name="userDao")
    private UserDao userDao;
	@Resource(name = "userDao")
    public void setDao(BaseDao<User> dao) {  
        super.setBaseDao(dao);
    }
	@Transactional
	public List<User> userList(String id) {
		System.out.println("accountid:"+id);
		String queryUser = "from User u where u.creater='"+id+"'";
		List<User> list = userDao.findAll(queryUser);
		System.out.println(list.size());
		return list;
	}
}
