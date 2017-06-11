package com.favs.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Car;
import com.favs.bean.Consumer;
import com.favs.bean.Item;
import com.favs.bean.Statu;
import com.opensymphony.xwork2.ActionContext;


@Controller
@Scope("prototype")
public class CarAction extends BaseAction<Car> {
	
	/**
	 * 从session得到购物车
	 */
	@Override
	public Car getModel() {
		model=(Car)session.get("car");
		return model;
	}

	/**
	 *  实现购物车(订单)与购物项(订单项) 级联入库功能
	 * @return
	 */
	public String save(){
		model.setConsumer((Consumer)session.get("consumer"));
		model.setStatu(new Statu(1));
		model.setSusername("供应商1");
		carService.save(model);
		//购物车已经入库，session中的要删除
		session.put("oldCar", session.remove("car"));
		return "bank";
	}
	
	/**
	 * 查询历史订单
	 */
	public String queryOrder(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		String cusername = request.getParameter("cusername");
		List<Car> list = carService.queryOrder(cusername);
		List<List<Item>> iteList = new ArrayList<List<Item>>();
		List<String> stalist = new ArrayList<String>();
		for (Car car : list) {
			iteList.add(itemService.queryItem(car));
			stalist.add(car.getStatu().getStatu());
		}
		session.put("iteList", iteList);
		session.put("stalist", stalist);
		session.put("list", list);
		return "orderInfo";
	}
	
	/**
	 * 删除订单
	 */
	public String deleteOrder(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		Integer carid = Integer.parseInt(request.getParameter("carid"));
		carService.delete(carid);
		String cusername = request.getParameter("cusername");
		List<Car> list = carService.queryOrder(cusername);
		List<List<Item>> iteList = new ArrayList<List<Item>>();
		List<String> stalist = new ArrayList<String>();
		for (Car car : list) {
			iteList.add(itemService.queryItem(car));
			stalist.add(car.getStatu().getStatu());
		}
		session.put("iteList", iteList);
		session.put("stalist", stalist);
		session.put("list", list);
		return "order";
	}
	
	/**
	 * 查询店铺历史订单
	 */
	public String querySupplierOrder(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		String susername = request.getParameter("susername");
		List<Car> list = carService.querySupplierOrder(susername);
		List<List<Item>> iteList = new ArrayList<List<Item>>();
		List<String> stalist = new ArrayList<String>();
		for (Car car : list) {
			iteList.add(itemService.queryItem(car));
			stalist.add(car.getStatu().getStatu());
		}
		session.put("iteList", iteList);
		session.put("stalist", stalist);
		session.put("list", list);
		return "supplierOrderInfo";
	}
	
	/**
	 * 删除店铺订单
	 */
	public String deleteSupplierOrder(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		Integer carid = Integer.parseInt(request.getParameter("carid"));
		carService.delete(carid);
		String susername = request.getParameter("susername");
		List<Car> list = carService.querySupplierOrder(susername);
		List<List<Item>> iteList = new ArrayList<List<Item>>();
		List<String> stalist = new ArrayList<String>();
		for (Car car : list) {
			iteList.add(itemService.queryItem(car));
			stalist.add(car.getStatu().getStatu());
		}
		session.put("iteList", iteList);
		session.put("stalist", stalist);
		session.put("list", list);
		return "supplierOrder";
	}
	
	/**
	 * 发货
	 */
	public String deliverGoods(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		Integer carid = Integer.parseInt(request.getParameter("carid"));
        
        Car car = carService.get(carid);
        Statu statu = new Statu(3);
        car.setStatu(statu);
        carService.update(car);
        
        String susername = request.getParameter("susername");
		List<Car> list = carService.querySupplierOrder(susername);
		List<List<Item>> iteList = new ArrayList<List<Item>>();
		List<String> stalist = new ArrayList<String>();
		for (Car car2 : list) {
			iteList.add(itemService.queryItem(car2));
			stalist.add(car2.getStatu().getStatu());
		}
		session.put("iteList", iteList);
		session.put("stalist", stalist);
		session.put("list", list);
		return "supplierOrder";
	}
	
	/**
	 * 确认收货
	 */
	public String confirmGoods(){
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
		Integer carid = Integer.parseInt(request.getParameter("carid"));
        
        Car car = carService.get(carid);
        Statu statu = new Statu(4);
        car.setStatu(statu);
        carService.update(car);
        
        String cusername = request.getParameter("cusername");
		List<Car> list = carService.queryOrder(cusername);
		List<List<Item>> iteList = new ArrayList<List<Item>>();
		List<String> stalist = new ArrayList<String>();
		for (Car car2 : list) {
			iteList.add(itemService.queryItem(car2));
			stalist.add(car2.getStatu().getStatu());
		}
		session.put("iteList", iteList);
		session.put("stalist", stalist);
		session.put("list", list);
		return "order";
	}
	
}
