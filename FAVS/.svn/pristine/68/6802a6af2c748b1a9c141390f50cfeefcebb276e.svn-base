package com.favs.listener;

import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.favs.util.FileUpload;
import com.favs.util.GoodsTimerTask;

/**
 * 
 * @author LSX
 * 用于项目启动的时候数据的初始化
 * 1.获取业务逻辑类goodsService，查询商品信息
 */
public class InitDataListener implements ServletContextListener {
	protected ApplicationContext context = null;
	protected GoodsTimerTask goodsTimerTask = null;
	private FileUpload fileUpload = null;
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {

	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		//通过工具类加载即可
		context = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());
		goodsTimerTask = (GoodsTimerTask) context.getBean("goodsTimerTask");
		//把内置对象交给productTimerTask
		goodsTimerTask.setApplication(event.getServletContext());
		fileUpload = (FileUpload) context.getBean("fileUpload");
		//通过设置定时器，让首页的数据每隔一小时显示一次（要配置为守护线程）
		new Timer(true).schedule(goodsTimerTask, 0, 1000*60);
		//项目启动加载银行图标
		event.getServletContext().setAttribute("bankList", fileUpload.getBankImage());
	}

}
