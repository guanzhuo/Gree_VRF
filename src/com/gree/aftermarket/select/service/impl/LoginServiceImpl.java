package com.gree.aftermarket.select.service.impl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gree.aftermarket.select.base.BaseDao;
import com.gree.aftermarket.select.base.BaseService;
import com.gree.aftermarket.select.bean.Permission;
import com.gree.aftermarket.select.bean.Role;
import com.gree.aftermarket.select.bean.RolePermission;
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
	public List<Permission> userPermission() {
		// TODO Auto-generated method stub
		System.out.println(CommonUtil.userid);
		String hql = "select distinct u.id,u.roles from User u,Role r where u.id='"+CommonUtil.userid+"'";
		List<Object[]> list = baseDao.findByHqL(hql);
		List<Permission> per= new ArrayList<Permission>();
		if(list.size()>0){
			System.out.println("++"+list.size());
			for(Object[] o:list){
				Role role = ((Role)o[1]);
				String rtestString = "from Role r left join r.rolePermissions rp where r.id="+role.getId()+"";
//				String ssString = "from Permission p left join p.permissionRole.roleid = 1001";
				List<Object[]> listss = baseDao.findByHqL(rtestString);
//				String roleSql = "from Role r,Permission p,RolePermission rp where r.id="+role.getId()+" and r.id = rp.roleid and rp.permissionid=p.id";
//				List<Object[]> perList = baseDao.findByHqL(roleSql);
//				
//				String teString = "select r.id,p.id from Role r,Permission p,RolePermission rp where r.id="+role.getId()+" and r.id = rp.roleid and p.id=1002";
//				List<Object[]> perLists = baseDao.findByHqL(teString);
//				if(perList.size()>0){
//				    System.out.println("=="+perList.size());	
//				}
				if(listss.size()>0){
					for(Object[] obj:listss){
						RolePermission rolePermission = new RolePermission();
						rolePermission = (RolePermission) obj[1];
						Permission permission = new Permission();
						permission = rolePermission.getPermissionid();
						per.add(permission);
					}
				}
				System.out.println(per.size());
			}
		}
		return per;
	}
}
