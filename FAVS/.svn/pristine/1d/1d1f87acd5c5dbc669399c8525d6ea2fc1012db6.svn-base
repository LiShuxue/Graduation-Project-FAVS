package com.favs.action;


import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Gtype;

@Controller
@Scope("prototype")
public class GtypeAction extends BaseAction<Gtype> {

	/**
	 * 查询并分页显示所查类别
	 * @return
	 */
	public String pagingQuery() {
		//用来存储分页的数据
		pageMap = new HashMap<String, Object>();
		//根据根据关键字和分页参数查询相应数据
		List<Gtype> gtypeList = gtypeService.pagingQuery(model.getGtypename(), page, rows);
		//根据关键字查询总记录数
		Long total = gtypeService.getCount(model.getGtypename());
		pageMap.put("rows", gtypeList);
		pageMap.put("total", total);
		//返回json数据，适合返回复杂的对象
		return "jsonMap";
	}
	
	/**
	 * 根据多个id删除多条数据
	 * @return
	 */
	public String deleteByIds() {
		gtypeService.deleteByIds(ids);
		inputStream = new ByteArrayInputStream("true".getBytes());
		//返回流，适合返回简单的数据
		return "stream";
	}
	
	public void save() {
		gtypeService.save(model);
	}
	
	public void update() {
		gtypeService.update(model);
	}
	
	public String query() {
		jsonList = gtypeService.query();
		return "jsonList";
	}
}
