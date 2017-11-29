package com.gree.aftermarket.select.base;

import java.util.List;

public interface BaseDao<K> {
	public void save(K k);

	public void delete(long id);

	public void update(K k);

	public K getById(long id);

	public List<K> findAll(String hql);
	
	public List findByHqL(String hql);
}
