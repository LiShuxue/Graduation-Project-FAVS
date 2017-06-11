package com.favs.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.favs.bean.Admins;

@Controller
@Scope("prototype")
public class AdminsAction extends BaseAction<Admins> {
	
	public void save() {
		adminsService.save(model);
	}
	
	public String update() {
		adminsService.update(model);
		Admins admins = adminsService.get(model.getAid());
		session.put("admins", admins);
		return "update";
	}

}
