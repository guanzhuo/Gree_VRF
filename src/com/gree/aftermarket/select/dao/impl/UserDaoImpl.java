package com.gree.aftermarket.select.dao.impl;

import org.springframework.stereotype.Repository;

import com.gree.aftermarket.select.base.impl.BaseDaoImpl;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.dao.UserDao;
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{
    @Override
    public void save(User k) {
    	// TODO Auto-generated method stub
    	super.save(k);
    }
}