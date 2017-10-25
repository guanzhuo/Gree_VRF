package com.gree.aftermarket.select.service.impl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

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
	public User loginInfo(String email) {
		//查询数据库中是否有该用户
		String sql = "select u from User u where u.email = '"+email+"'";
		List<User> list = baseDao.findAll(sql);
		if(list.size()>0){
			System.out.println(list.size());
			User user = list.get(0);
			return user;
		}else{
			return null;
		}
	}
	@Transactional
	public void logOut(){
		System.out.println("退出成功");
	}
	@Transactional
	public User userPermission() {
		// TODO Auto-generated method stub
		String hql = "select u.id,r.id from User u,Role r,"
				+ "where u.id=r.userid";
		List<Object[]> list = baseDao.findByHqL(hql);
		if(list.size()>0){
			System.out.println(list.size());
		}
		return null;
	}
}
