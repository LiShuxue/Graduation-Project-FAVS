package com.favs.action;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Supplier;

@Controller
@Scope("prototype")
public class SupplierAction extends BaseAction<Supplier> {

	/**
	 * 查询并分页显示所查供应商
	 * @return
	 */
	public String pagingQuery() {
		//用来存储分页的数据
		pageMap = new HashMap<String, Object>();
		//根据根据关键字和分页参数查询相应数据
		List<Supplier> supplierList = supplierService.pagingQuery(model.getSusername(), page, rows);
		//根据关键字查询总记录数
		Long total = supplierService.getCount(model.getSusername());
		pageMap.put("rows", supplierList);
		pageMap.put("total", total);
		//返回json数据，适合返回复杂的对象
		return "jsonMap";
	}
	
	/**
	 * 根据多个id删除多条数据
	 * @return
	 */
	public String deleteByIds() {
		supplierService.deleteByIds(ids);
		inputStream = new ByteArrayInputStream("true".getBytes());
		//返回流，适合返回简单的数据
		return "stream";
	}
	
	public void save() {
		supplierService.save(model);
	}
	
	public void update() {
		supplierService.update(model);
	}
	
	public String update2() {
		supplierService.update(model);
		session.put("supplier", model);
		request.put("success2", "修改成功，点击跳到店铺首页");
		return "supplierInfo";
	}
	
	public String query() {
		jsonList = supplierService.query();
		return "jsonList";
	}
}
