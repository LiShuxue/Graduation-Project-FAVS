package com.favs.service;

import java.util.List;

import com.favs.bean.Gtype;

public interface GtypeService extends BaseService<Gtype>{
	/**
	 * 根据多个Id删除多条记录
	 * @param ids   多个id值字符串
	 */
	public void deleteByIds(String ids);
	
	/**
	 * 查询类别信息，分页显示 
	 * @param gtypename   类别名称
	 * @param page   第几页
	 * @param size   每页显示多少行
	 * @return
	 */
	public List<Gtype> pagingQuery(String gtypename, int page, int size);
	/**
	 * 根据关键字查询总记录数
	 * @param gtypename  类别名称
	 * @return
	 */
	public Long getCount(String gtypename);
	
	/**
	 * 根据boolean值查询热点或非热点类别
	 * @param hot
	 * @return
	 */
	public List<Gtype> queryByHot(boolean hot);
	
	/**
	 * 查询所有类别
	 * @return
	 */
	public List<Gtype> queryType();
}
