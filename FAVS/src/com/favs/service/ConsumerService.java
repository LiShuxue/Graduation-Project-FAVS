package com.favs.service;

import java.util.List;

import com.favs.bean.Consumer;
import com.favs.bean.Supplier;

public interface ConsumerService extends BaseService<Consumer> {

	/**
	 * 根据多个Id删除多条记录
	 * @param ids   多个id值字符串
	 */
	public void deleteByIds(String ids);
	
	/**
	 * 查询购买者信息，分页显示 
	 * @param cusername  购买者用户名
	 * @param page   第几页
	 * @param size   每页显示多少行
	 * @return
	 */
	public List<Consumer> pagingQuery(String cusername, int page, int size);
	/**
	 * 根据关键字查询总记录数
	 * @param cusername  购买者名称
	 * @return
	 */
	public Long getCount(String cusername);

	/**
	 * 根据用户名密码查询购买者
	 * @param  username  用户名
	 * @param  password  密码
	 * @return
	 */
	public Consumer queryNamePass(String username, String password);
	
	/**
	 * 根据用户名购买者
	 * @param  username  用户名
	 * @return
	 */
	public Consumer queryName(String username);
}
