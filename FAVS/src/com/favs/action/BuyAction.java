package com.favs.action;

import java.io.ByteArrayInputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Buy;
import com.favs.bean.Consumer;
import com.favs.bean.Supplier;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class BuyAction extends BaseAction<Buy> {

	/**
	 * 查询并分页显示所查求购信息
	 * @return
	 */
	public String pagingQueryJoinConsumer() {
		//用来存储分页的数据
		pageMap = new HashMap<String, Object>();
		//根据根据关键字和分页参数查询相应数据
		List<Buy> buyList = buyService.pagingQueryJoinConsumer(model.getBtitle(), page, rows);
		//根据关键字查询总记录数
		Long total = buyService.getCount(model.getBtitle());
		pageMap.put("rows", buyList);
		pageMap.put("total", total);
		//返回json数据，适合返回复杂的对象
		return "jsonMap";
	}
	
	/**
	 * 根据多个id删除多条数据
	 * @return
	 */
	public String deleteByIds() {
		buyService.deleteByIds(ids);
		inputStream = new ByteArrayInputStream("true".getBytes());
		//返回流，适合返回简单的数据
		return "stream";
	}
	
	public void save() {
		buyService.save(model);
	}
	
	public void update() {
		buyService.update(model);
	}
	
	public String query() {
		jsonList = buyService.query();
		return "jsonList";
	}
	
	public String get(){
		request.put("buy", buyService.queryBuyById(model.getBid()));
		return "buy";
	}
	
	public String saveBuy() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String btime = request.getParameter("btime");
		String cusername = request.getParameter("cusername");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date btime2= null;
		try {
			btime2 = sdf.parse(btime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Consumer consumer = consumerService.queryName(cusername);
		model.setBtitle(btitle);
		model.setBcontent(bcontent);
		model.setBtime(btime2);
		model.setConsumer(consumer);
		buyService.save(model);
		return "index";
	}
}
