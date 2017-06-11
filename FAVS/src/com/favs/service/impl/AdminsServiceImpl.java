package com.favs.service.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Admins;
import com.favs.service.AdminsService;

@Service("adminsService")
public class AdminsServiceImpl extends BaseServiceImpl<Admins> implements AdminsService {
	@Override
	public Admins queryNamePass(String username, String password){
		String hql="FROM Admins a WHERE a.ausername=:username AND a.apassword=:password";
		Query query = getSession().createQuery(hql);
		query.setString("username",username);
		query.setString("password", password);
		Admins a = (Admins) query.uniqueResult();
		return a;
	}
}
