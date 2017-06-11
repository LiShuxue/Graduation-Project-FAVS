package com.favs.action;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.favs.bean.Car;
import com.favs.bean.Statu;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class PayAction extends BaseAction<Object>{

	public String goBank() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);     
        
		Integer carid = Integer.parseInt(request.getParameter("carid"));
        String pd_FrpId=(String) request.getParameter("pd_FrpId"); 
        
        Car car = carService.get(carid);
        Statu statu = new Statu(2);
        car.setStatu(statu);
        carService.update(car);
        session.put("pd_FrpId",pd_FrpId);
		return "pay";
	}
}
