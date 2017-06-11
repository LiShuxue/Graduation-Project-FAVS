package com.favs.service;

import java.util.List;

import com.favs.bean.Supplier;

public interface SupplierService extends BaseService<Supplier> {

	/**
	 * 根据多个Id删除多条记录
	 * @param ids   多个id值字符串
	 */
	public void deleteByIds(String ids);
	
	/**
	 * 查询供应商信息，分页显示 
	 * @param susername  供应商用户名
	 * @param page   第几页
	 * @param size   每页显示多少行
	 * @return
	 */
	public List<Supplier> pagingQuery(String susername, int page, int size);
	/**
	 * 根据关键字查询总记录数
	 * @param susername  供应商名称
	 * @return
	 */
	public Long getCount(String susername);

	/**
	 * 根据用户名密码查询供应商
	 * @param  username  用户名
	 * @param  password  密码
	 * @return
	 */
	public Supplier queryNamePass(String username, String password);
	
	/**
	 * 根据用户名查询供应商
	 * @param  username  用户名
	 * @return
	 */
	public Supplier queryName(String username);
}
