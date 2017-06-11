package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Car;
import com.favs.bean.Item;
import com.favs.service.CarService;

@Service("carService")
public class CarServiceImpl extends BaseServiceImpl<Car> implements CarService {

	@Override
	public double cluTotal(Car car) {
		double total=0.0;
		for(Item temp : car.getItemList()){
			total += temp.getNumber() * temp.getGprice();
		}
		return total;
	}

	@Override
	public List<Car> queryOrder(String cusername) {
		String hql = "From Car c left join fetch c.statu where c.cusername=:cusername order by c.carid desc";
		Query query = getSession().createQuery(hql);
		query.setString("cusername", cusername);
		return query.list();
	}
	
	@Override
	public List<Car> querySupplierOrder(String susername) {
		String hql = "From Car c left join fetch c.statu where c.susername=:susername order by c.carid desc";
		Query query = getSession().createQuery(hql);
		query.setString("susername", susername);
		return query.list();
	}
}
