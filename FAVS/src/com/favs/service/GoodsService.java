package com.favs.service;

import java.util.List;

import com.favs.bean.Goods;

public interface GoodsService extends BaseService<Goods> {

	/**
	 * 根据多个Id删除多条记录
	 * @param ids   多个id值字符串
	 */
	public void deleteByIds(String ids);
	
	/**
	 * 查询商品信息（级联商品类别和供应商），分页显示 
	 * @param gname   商品名
	 * @param page   第几页
	 * @param size   每页显示多少行
	 * @return
	 */
	public List<Goods> pagingQueryJoinGtypeAndSupplier(String gname, int page, int size);
	/**
	 * 根据关键字查询总记录数
	 * @param gname  商品名
	 * @return
	 */
	public Long getCount(String gname);
	
	/**
	 * 根据热点类别,查询当前类别推荐商品 （仅仅查询前4个）
	 * @param gtypeid  类别id
	 * @return
	 */
	public List<Goods> queryByGtypeid(int gtypeid);

	/**
	 * 根据商品名查询商品 （仅仅查询前8个）
	 * @param gname  商品名
	 * @return
	 */
	public List<Goods> queryByName(String gname);

	/**
	 * 根据类别和供应商,查询当前类别某供应商提供的商品（仅仅查询前4个）
	 * @param gtypeid  类别id
	 * @param sid  供应商id
	 * @return
	 */
	public List<Goods> queryByGtypeidAndSupp(int gtypeid, int sid);
}
