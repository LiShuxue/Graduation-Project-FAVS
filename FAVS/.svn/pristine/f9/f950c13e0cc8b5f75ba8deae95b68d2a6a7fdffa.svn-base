package com.favs.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Admins;
import com.favs.bean.Consumer;
import com.favs.bean.Goods;
import com.favs.bean.Gtype;
import com.favs.bean.Supplier;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction<Object> {
	
	/**
	 * 登录
	 * @return
	 */
	public String login(){
		Consumer consumer = consumerService.queryNamePass(username, password);
		Admins admins = adminsService.queryNamePass(username, password);
		Supplier supplier = supplierService.queryNamePass(username, password);
		if (consumer != null) {
			session.put("consumer", consumer);
			return "index";
		}else if (admins != null) {
			session.put("admins", admins);
			return "aindex";
		}else if (supplier != null){
			session.put("supplier", supplier);
			List<List<Goods>> bigList2 = new ArrayList<List<Goods>>();
			//查询出供应商所能供应的类别
			for (Gtype gtype : gtypeService.queryType()) {
				//根据类别id获取供应商供应的商品信息，是一个list,list里面有4个商品
				bigList2.add(goodsService.queryByGtypeidAndSupp(gtype.getGtypeid(), supplier.getSid()));
			}
			//把查询的bigList交给application内置对象。
			application.put("bigList2", bigList2);
			return "supp";
		}else{
			request.put("error", "登录失败，请重试！");
		}
		return "login";
		
	}

}
