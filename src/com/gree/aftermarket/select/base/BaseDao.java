package com.gree.aftermarket.select.base;

import java.util.List;

public interface BaseDao<K> {
	public void save(K k);

	public void delete(K k);

	public void update(K k);

	public List<K> getById();

	public List<K> findAll(String hql);
	
	public List findByHqL(String hql);
}
