package com.favs.action;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Consumer;

@Controller
@Scope("prototype")
public class ConsumerAction extends BaseAction<Consumer> {

	/**
	 * 查询并分页显示所查购买者
	 * @return
	 */
	public String pagingQuery() {
		//用来存储分页的数据
		pageMap = new HashMap<String, Object>();
		//根据根据关键字和分页参数查询相应数据
		List<Consumer> consumerList = consumerService.pagingQuery(model.getCusername(), page, rows);
		//根据关键字查询总记录数
		Long total = consumerService.getCount(model.getCusername());
		pageMap.put("rows", consumerList);
		pageMap.put("total", total);
		//返回json数据，适合返回复杂的对象
		return "jsonMap";
	}
	
	/**
	 * 根据多个id删除多条数据
	 * @return
	 */
	public String deleteByIds() {
		consumerService.deleteByIds(ids);
		inputStream = new ByteArrayInputStream("true".getBytes());
		//返回流，适合返回简单的数据
		return "stream";
	}
	
	public void save() {
		consumerService.save(model);
	}
	
	public void update() {
		consumerService.update(model);
	}
	
	public String query() {
		jsonList = consumerService.query();
		return "jsonList";
	}
	public String update2() {
		consumerService.update(model);
		session.put("consumer", model);
		request.put("success", "修改成功，点击跳到首页");
		return "consumerInfo";
	}
}
