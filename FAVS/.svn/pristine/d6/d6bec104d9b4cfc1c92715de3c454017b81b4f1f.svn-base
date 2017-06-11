package com.favs.action;

import java.io.InputStream;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.FileImage;
import com.favs.service.AdminsService;
import com.favs.service.BuyService;
import com.favs.service.CarService;
import com.favs.service.ConsumerService;
import com.favs.service.GoodsService;
import com.favs.service.GtypeService;
import com.favs.service.ItemService;
import com.favs.service.NewsService;
import com.favs.service.SupplierService;
import com.favs.util.FileUpload;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("unchecked")
@Controller
@Scope("prototype")
public class BaseAction<T> extends ActionSupport implements RequestAware, SessionAware, ApplicationAware, ModelDriven<T> {
	protected String username;
	protected String password;
	
	//第一部分，传入的分页的相关参数，第几页和显示多少行。EasyUI分页必须有的东西.pageMap存储传回去的数据
	protected Integer page;
	protected Integer rows;
	protected Map<String, Object> pageMap = null;
	
	//获取要删除的id
	protected String ids;
	//返回的流
	protected InputStream inputStream;
	
	protected List<T> jsonList = null;
	
	protected FileImage fileImage;
	
	//第二部分，ModelDriven
	protected T model;
	
	//第三部分，注入所有的service接口
	@Resource
	protected AdminsService adminsService;
	@Resource
	protected GtypeService gtypeService;
	@Resource
	protected SupplierService supplierService;
	@Resource
	protected ConsumerService consumerService;
	@Resource
	protected BuyService buyService;
	@Resource
	protected NewsService newsService;
	@Resource
	protected GoodsService goodsService;
	@Resource
	protected CarService carService;
	@Resource
	protected ItemService itemService;
	@Resource
	protected FileUpload fileUpload;
	
	
	//第四部分，相应的Map
	protected Map<String, Object> request;
	protected Map<String, Object> session;
	protected Map<String, Object> application;
	
	@Override
	public T getModel() {
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		Class clazz = (Class)type.getActualTypeArguments()[0];
		try {
			model = (T) clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return model;
	}
	@Override
	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Map<String, Object> getPageMap() {
		return pageMap;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getIds() {
		return ids;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public List<T> getJsonList() {
		return jsonList;
	}	
	public void setFileImage(FileImage fileImage) {
		this.fileImage = fileImage;
	}
	public FileImage getFileImage() {
		return fileImage;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
}
