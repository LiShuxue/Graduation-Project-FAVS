package com.favs.service;

import java.util.List;

import com.favs.bean.News;

public interface NewsService extends BaseService<News> {

	/**
	 * 根据多个Id删除多条记录
	 * @param ids   多个id值字符串
	 */
	public void deleteByIds(String ids);
	
	/**
	 * 查询新闻信息（包括发布人），分页显示 
	 * @param ntitle   新闻标题
	 * @param page   第几页
	 * @param size   每页显示多少行
	 * @return
	 */
	public List<News> pagingQueryJoinSupplier(String ntitle, int page, int size);
	/**
	 * 根据关键字查询总记录数
	 * @param ntitle  新闻标题
	 * @return
	 */
	public Long getCount(String ntitle);

	/**
	 * 查询所有新闻信息
	 * @return
	 */
	public List<News> queryNews();

	/**
	 * 根据新闻id查询新闻
	 * @param nid
	 * @return
	 */
	public News queryNewsById(Integer nid);
}
