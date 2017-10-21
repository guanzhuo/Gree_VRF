package com.gree.aftermarket.select.base;

public class BaseService<K> {
	protected BaseDao<K> baseDao;
	public BaseDao<K> getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(BaseDao<K> baseDao) {
		this.baseDao = baseDao;
	}
	public void add(K k) {
		baseDao.save(k);
	}
}
