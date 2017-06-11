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

import com.favs.bean.News;
import com.favs.bean.Supplier;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class NewsAction extends BaseAction<News> {

	/**
	 * 查询并分页显示所查新闻信息
	 * @return
	 */
	public String pagingQueryJoinSupplier() {
		//用来存储分页的数据
		pageMap = new HashMap<String, Object>();
		//根据根据关键字和分页参数查询相应数据
		List<News> newsList = newsService.pagingQueryJoinSupplier(model.getNtitle(), page, rows);
		//根据关键字查询总记录数
		Long total = newsService.getCount(model.getNtitle());
		pageMap.put("rows", newsList);
		pageMap.put("total", total);
		//返回json数据，适合返回复杂的对象
		return "jsonMap";
	}
	
	/**
	 * 根据多个id删除多条数据
	 * @return
	 */
	public String deleteByIds() {
		newsService.deleteByIds(ids);
		inputStream = new ByteArrayInputStream("true".getBytes());
		//返回流，适合返回简单的数据
		return "stream";
	}
	
	public void save() {
		newsService.save(model);
	}
	
	public void update() {
		newsService.update(model);
	}
	
	public String query() {
		jsonList = newsService.query();
		return "jsonList";
	}
	
	public String get(){
		request.put("news", newsService.queryNewsById(model.getNid()));
		return "news";
	}
	
	public String saveNew() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
		String ntitle = request.getParameter("ntitle");
		String ncontent = request.getParameter("ncontent");
		String ntime = request.getParameter("ntime");
		String susername = request.getParameter("susername");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date ntime2= null;
		try {
			ntime2 = sdf.parse(ntime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Supplier supplier = supplierService.queryName(susername);
		model.setNtime(ntime2);
		model.setNtitle(ntitle);
		model.setNcontent(ncontent);
		model.setSupplier(supplier);
		newsService.save(model);
		return "index";
	}
	
}
