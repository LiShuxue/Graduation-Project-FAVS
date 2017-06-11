package com.favs.service;

import java.util.List;

import com.favs.bean.Car;
import com.favs.bean.Goods;
import com.favs.bean.Item;

public interface ItemService extends BaseService<Item> {
	 /**
	  *  添加购物项
	  * @param car  购物车
	  * @param goods  商品
	  * @param number  数量
	  * @return
	  */
	 public Car addItem(Car car, Goods goods, Integer number);
	 /**
	  *  把商品goods数据转化为购物项item
	  * @param goods  商品
	  * @param number  数量
	  * @return
	  */
	 public Item goodsToItem(Goods goods, Integer number);
	 
	 /**
	  *  根据订单编号查询商品信息
	  * @param car 订单
	  * @return
	  */
	 public List<Item> queryItem(Car car);
}
