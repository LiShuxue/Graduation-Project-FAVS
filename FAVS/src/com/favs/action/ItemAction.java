package com.favs.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Car;
import com.favs.bean.Goods;
import com.favs.bean.Item;
import com.opensymphony.xwork2.ActionContext;


@Controller
@Scope("prototype")
public class ItemAction extends BaseAction<Item> {

	/**
	 * 添加购物项
	 * @return
	 */
	public String addItem(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		Integer number = Integer.parseInt(request.getParameter("number"));
		
		//1: 根据goods.gid获取相应的商品数据
		Goods goods = goodsService.get(model.getGoods().getGid());
		//2: 判断当前session是否有购物车,如果没有则创建
		if(session.get("car") == null){
			// 创建新购物车,存储到session中
			session.put("car",new Car(new ArrayList<Item>()));
		}
		Car car = (Car)session.get("car");
		//3: 把商品信息转化为 购物项item,并且添加到购物车中(判断购物项是否重复)
		car = itemService.addItem(car, goods, number);
		//4: 计算购物的总价格
		car.setCartotal(carService.cluTotal(car));
		//5: 吧新的购物车存储到session中
		session.put("car", car);
		return "showCar";
	}
	
	public String clear(){
		session.put("car", null);
		return "showCar";
	}
}
