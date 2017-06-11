package com.favs.service;

import java.util.List;

import com.favs.bean.Buy;

public interface BuyService extends BaseService<Buy> {

	/**
	 * 根据多个Id删除多条记录
	 * @param ids   多个id值字符串
	 */
	public void deleteByIds(String ids);
	
	/**
	 * 查询求购信息（包括求购人），分页显示 
	 * @param btitle   求购标题
	 * @param page   第几页
	 * @param size   每页显示多少行
	 * @return
	 */
	public List<Buy> pagingQueryJoinConsumer(String btitle, int page, int size);
	/**
	 * 根据关键字查询总记录数
	 * @param btitle  求购标题
	 * @return
	 */
	public Long getCount(String btitle);

	/**
	 * 查询所有的求购信息
	 * @return
	 */
	public List<Buy> queryBuy();

	/**
	 * 根据id查询求购信息
	 * @param bid
	 * @return
	 */
	public Buy queryBuyById(Integer bid);
}
