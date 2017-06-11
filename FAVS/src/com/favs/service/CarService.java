package com.favs.service;

import java.util.List;

import com.favs.bean.Car;

public interface CarService extends BaseService<Car> {
	 /**
	  *  计算购物总价格
	  * @param car 购物车
	  * @return
	  */
	 public double cluTotal(Car car);
	 
	 /**
	  *  查询历史订单
	  * @param cusername 用户名
	  * @return
	  */
	 public List<Car> queryOrder(String cusername);
	 
	 /**
	  *  查询店铺订单
	  * @param susername 供应商
	  * @return
	  */
	 public List<Car> querySupplierOrder(String susername);
}
