package com.gree.aftermarket.select.base.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.gree.aftermarket.select.base.BaseDao;


@Repository
public abstract class BaseDaoImpl<K> implements BaseDao<K>{
	private Class<K> clazz; //T的具体类
	@Resource
	private SessionFactory sessionFactory;
	
	public BaseDaoImpl() {
		// TODO Auto-generated constructor stub
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class<K>) pt.getActualTypeArguments()[0];
		System.out.println("对象为："+clazz);
	}
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Override
	public void save(K k) {
		System.out.println("保存");
		// TODO Auto-generated method stub
		getSession().save(k);
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		Object object = getById(id);
        if(object != null){
           getSession().delete(object);
        }
	}

	@Override
	public void update(K k) {
		
	}
	@Override
	public K getById(long id) {
		// TODO Auto-generated method stub
		if(id != 0){
			return (K)getSession().get(clazz, id);
		}else{
			return null;
		}
	}

	@Override
	public List<K> findAll(String hql) {
		// TODO Auto-generated method stub
		List<K> list = this.getSession().createQuery(hql).list();
		return list;
	}
//	@Override
	public List findByHqL(String hql) {
		// TODO Auto-generated method stub
		List list = this.getSession().createQuery(hql).list();
		return list;
	}
	@Override
	public List findBySql(String sql) {
		// TODO Auto-generated method stub
		List list = this.getSession().createSQLQuery(sql).list();
		return list;
	}
	

}
