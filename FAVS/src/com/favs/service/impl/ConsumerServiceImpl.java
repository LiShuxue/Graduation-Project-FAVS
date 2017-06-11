package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import com.favs.bean.Consumer;
import com.favs.bean.Supplier;
import com.favs.service.ConsumerService;

@Service("consumerService")
public class ConsumerServiceImpl extends BaseServiceImpl<Consumer> implements ConsumerService {

	@Override
	public void deleteByIds(String ids) {
		//注意后面的写法。不能    in (:ids)。这样后面就不用写setString了
		String hql = "delete from Consumer where cid in (" + ids + ")";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}

	@Override
	public List<Consumer> pagingQuery(String cusername, int page, int size) {
		String hql = "From Consumer c where c.cusername like :cusername";
		Query query = getSession().createQuery(hql);
		query.setString("cusername", "%" + cusername + "%");
		query.setFirstResult((page-1) * size);
		query.setMaxResults(size);
		return query.list();
	}

	@Override
	public Long getCount(String cusername) {
		String hql = "select count(c) from Consumer c where c.cusername like :cusername";
		Query query = getSession().createQuery(hql);
		query.setString("cusername", "%" + cusername + "%");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Consumer queryNamePass(String username, String password){
		String hql="FROM Consumer c WHERE c.cusername=:username AND c.cpassword=:password";
		Query query = getSession().createQuery(hql);
		query.setString("username",username);
		query.setString("password", password);
		Consumer c = (Consumer) query.uniqueResult();
		return c;
	}
	
	@Override
	public Consumer queryName(String username) {
		String hql="FROM Consumer c WHERE c.cusername=:username";
		Query query = getSession().createQuery(hql);
		query.setString("username",username);
		Consumer c = (Consumer) query.uniqueResult();
		return c;
	}

}
