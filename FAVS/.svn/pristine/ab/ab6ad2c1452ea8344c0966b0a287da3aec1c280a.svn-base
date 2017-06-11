package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Car;
import com.favs.bean.Goods;
import com.favs.bean.Item;
import com.favs.service.ItemService;

@Service("itemService")
public class ItemServiceImpl extends BaseServiceImpl<Item> implements ItemService {

	@Override
	public Car addItem(Car car, Goods goods, Integer number) {
		boolean isHave=false;
		Item item = goodsToItem(goods, number);
		// 判断当前购物项是否重复,如果重复则添加数量即可
		for(Item old : car.getItemList()){
			if(old.getGoods().getGid().equals(item.getGoods().getGid())){
				// 购物项有重复,添加数量即可
				old.setNumber(old.getNumber() + item.getNumber());
				isHave=true;
				break;
			}
		}
		// 说明当前购物项 在购物车中是不存在,新添加即可
		if(!isHave){
			// 建立购物项目与购物车的关联,此时 car.id为null,但是在入库的时候是先入库购物车,在入库购物项, 那时就有car就有主键
			item.setCar(car);
			car.getItemList().add(item);
		}
		return car;
	}

	@Override
	public Item goodsToItem(Goods goods, Integer number) {
		Item item=new Item();
		item.setGname(goods.getGname());
		item.setNumber(number);
		item.setGprice(goods.getGprice());
		item.setGoods(goods);
		return item;
	}

	@Override
	public List<Item> queryItem(Car car) {
		String hql = "From Item i left join fetch i.goods where i.car=:car";
		Query query = getSession().createQuery(hql);
		query.setEntity("car", car);
		return query.list();
	}
}
