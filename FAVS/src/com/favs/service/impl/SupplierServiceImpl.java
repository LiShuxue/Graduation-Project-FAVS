package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Admins;
import com.favs.bean.Supplier;
import com.favs.service.SupplierService;

@Service("supplierService")
public class SupplierServiceImpl extends BaseServiceImpl<Supplier> implements SupplierService {

	@Override
	public void deleteByIds(String ids) {
		//注意后面的写法。不能    in (:ids)。这样后面就不用写setString了
		String hql = "delete from Supplier where sid in (" + ids + ")";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}

	@Override
	public List<Supplier> pagingQuery(String susername, int page, int size) {
		String hql = "From Supplier s where s.susername like :susername";
		Query query = getSession().createQuery(hql);
		query.setString("susername", "%" + susername + "%");
		query.setFirstResult((page-1) * size);
		query.setMaxResults(size);
		return query.list();
	}

	@Override
	public Long getCount(String susername) {
		String hql = "select count(s) from Supplier s where s.susername like :susername";
		Query query = getSession().createQuery(hql);
		query.setString("susername", "%" + susername + "%");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Supplier queryNamePass(String username, String password){
		String hql="FROM Supplier s WHERE s.susername=:username AND s.spassword=:password";
		Query query = getSession().createQuery(hql);
		query.setString("username",username);
		query.setString("password", password);
		Supplier s = (Supplier) query.uniqueResult();
		return s;
	}

	@Override
	public Supplier queryName(String username) {
		String hql="FROM Supplier s WHERE s.susername=:username";
		Query query = getSession().createQuery(hql);
		query.setString("username",username);
		Supplier s = (Supplier) query.uniqueResult();
		return s;
	}

}
