package com.gree.aftermarket.select.service.impl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gree.aftermarket.select.base.BaseDao;
import com.gree.aftermarket.select.base.BaseService;
import com.gree.aftermarket.select.bean.Role;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.common.CommonUtil;
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
			CommonUtil.userid = user.getId();
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
		System.out.println(CommonUtil.userid);
		String hql = "select distinct u.id,u.roles from User u,Role r where u.id='"+CommonUtil.userid+"'";
		List<Object[]> list = baseDao.findByHqL(hql);
		
		if(list.size()>0){
			System.out.println("++"+list.size());
			for(Object[] o:list){
				Role role = ((Role)o[1]);
				String roleSql = "select r,p from Role r,Permission p,RolePermission rp where r.id="+role.getId()+" and r.id = rp.roleid and rp.permissionid=p.id";
				List<Object[]> perList = baseDao.findByHqL(roleSql);
				
				String teString = "select r.id,p.id from Role r,Permission p,RolePermission rp where r.id="+role.getId()+" and r.id = rp.roleid and p.id=1002";
				List<Object[]> perLists = baseDao.findByHqL(teString);
				
				if(perList.size()>0){
				    System.out.println("=="+perList.size());	
				}
			}
		}
		return null;
	}
}
