package com.favs.action;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Goods;
import com.favs.bean.Gtype;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class GoodsAction extends BaseAction<Goods> {

	/**
	 * 查询并分页显示所查商品信息
	 * @return
	 */
	public String pagingQueryJoinGtypeAndSupplier() {
		//用来存储分页的数据
		pageMap = new HashMap<String, Object>();
		//根据根据关键字和分页参数查询相应数据
		List<Goods> goodsList = goodsService.pagingQueryJoinGtypeAndSupplier(model.getGname(), page, rows);
		//根据关键字查询总记录数
		Long total = goodsService.getCount(model.getGname());
		pageMap.put("rows", goodsList);
		pageMap.put("total", total);
		//返回json数据，适合返回复杂的对象
		return "jsonMap";
	}
	
	/**
	 * 根据多个id删除多条数据
	 * @return
	 */
	public String deleteByIds() {
		goodsService.deleteByIds(ids);
		inputStream = new ByteArrayInputStream("true".getBytes());
		//返回流，适合返回简单的数据
		return "stream";
	}
	
	public void save() {
		String imageUrl = fileUpload.uploadFile(fileImage);
		model.setGimage(imageUrl);
		goodsService.save(model);
	}
	
	public void update() {
		goodsService.update(model);
	}
	
	public String update2() {
		goodsService.update(model);
		session.put("goods", model);
		request.put("success3", "修改成功，点击跳到店铺首页");
		return "updategoods";
	}
	
	public String get(){
		request.put("goods", goodsService.get(model.getGid()));
		return "detail";
	}
	public String get2(){
		session.put("goods", goodsService.get(model.getGid()));
		return "detail2";
	}
	
	/**
	 * 返回首页
	 * @return
	 */
	public String back(){
		return "index";
	}
	
	public String queryByName(){
		String gname = (String) request.get("gname");
		List<Goods> goodsList = goodsService.queryByName(gname);
		application.put("gname", gname);
		application.put("goodsList", goodsList);
		return "goods";
	}
	
	public String addGoods() {
		String imageUrl = fileUpload.uploadFile(fileImage);
		model.setGimage(imageUrl);
		goodsService.save(model);
		return "index2";
	}
	
}
