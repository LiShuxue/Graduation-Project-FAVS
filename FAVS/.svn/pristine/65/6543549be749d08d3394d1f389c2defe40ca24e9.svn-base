package com.favs.util;

import java.util.ArrayList;
import java.util.List;
import java.util.TimerTask;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;

import com.favs.bean.Buy;
import com.favs.bean.Goods;
import com.favs.bean.Gtype;
import com.favs.bean.News;
import com.favs.service.BuyService;
import com.favs.service.GoodsService;
import com.favs.service.GtypeService;
import com.favs.service.NewsService;

/**
 * 设置任务：run方法中用来加载首页的商品信息数据
 * @author LSX
 *
 */
@Component("goodsTimerTask")
public class GoodsTimerTask extends TimerTask {
	@Resource
	protected GoodsService goodsService = null;
	@Resource
	protected GtypeService gtypeService = null;
	@Resource
	protected NewsService newsService = null;
	@Resource
	protected BuyService buyService = null;
	
	private ServletContext application = null;
	public void setApplication(ServletContext application) {
		this.application = application;
	}

	@Override
	public void run() {
		//一个大的list存首页显示的所有商品，但是商品是不同的类别，所以里面有个小list，存相应类别的商品
		List<List<Goods>> bigList = new ArrayList<List<Goods>>();
		//查询出热点类别
		for (Gtype gtype : gtypeService.queryByHot(true)) {
			//根据热点类别id获取推荐商品信息，是一个list,list里面有4个商品
			bigList.add(goodsService.queryByGtypeid(gtype.getGtypeid()));
		}
		//把查询的bigList交给application内置对象。
		application.setAttribute("bigList", bigList);
		
		//得到新闻和求购信息
		List<News> newsList = newsService.queryNews();
		application.setAttribute("newsList", newsList);
		
		List<Buy> buyList = buyService.queryBuy();
		application.setAttribute("buyList", buyList);
		
	}

}
