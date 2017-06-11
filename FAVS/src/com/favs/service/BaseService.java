package com.favs.service;

import java.util.List;

public interface BaseService<T> {

	/**
	 * 增加
	 */
	public void save(T t);

	/**
	 * 修改
	 */
	public void update(T t);
	
	/**
	 * 根据id删除一条数据
	 */
	public void delete(int id);
	
	/**
	 * 根据id获得一个对象
	 */
	public T get(int id);
	
	/**
	 * 一次查询所有数据，不带分页
	 */
	public List<T> query();
}
