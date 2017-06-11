package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Gtype;
import com.favs.service.GtypeService;

@Service("gtypeService")
public class GtypeServiceImpl extends BaseServiceImpl<Gtype> implements GtypeService {

	@Override
	public void deleteByIds(String ids) {
		//注意后面的写法。不能    in (:ids)。这样后面就不用写setString了
		String hql = "delete from Gtype where gtypeid in (" + ids + ")";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
		
	}

	@Override
	public List<Gtype> pagingQuery(String gtypename, int page, int size) {
		String hql = "From Gtype g where g.gtypename like :gtypename";
		Query query = getSession().createQuery(hql);
		query.setString("gtypename", "%" + gtypename + "%");
		query.setFirstResult((page-1) * size);
		query.setMaxResults(size);
		return query.list();
	}

	@Override
	public Long getCount(String gtypename) {
		String hql = "select count(g) from Gtype g where g.gtypename like :gtypename";
		Query query = getSession().createQuery(hql);
		query.setString("gtypename", "%" + gtypename + "%");
		return (Long) query.uniqueResult();
	}

	@Override
	public List<Gtype> queryByHot(boolean hot) {
		String hql = "From Gtype g where g.hot =:hot";
		Query query = getSession().createQuery(hql);
		query.setBoolean("hot", hot);
		return query.list();
	}
	
	@Override
	public List<Gtype> queryType() {
		String hql = "From Gtype";
		Query query = getSession().createQuery(hql);
		return query.list();
	}


}
