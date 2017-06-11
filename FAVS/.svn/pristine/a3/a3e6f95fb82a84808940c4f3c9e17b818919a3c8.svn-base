package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.News;
import com.favs.service.NewsService;

@Service("newsService")
public class NewsServiceImpl extends BaseServiceImpl<News> implements NewsService {
	@Override
	public void deleteByIds(String ids) {
		String hql = "delete from News where nid in (" + ids + ")";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}

	@Override
	public List<News> pagingQueryJoinSupplier(String ntitle, int page, int size) {
		String hql = "From News n left join fetch n.supplier where n.ntitle like :ntitle";
		Query query = getSession().createQuery(hql);
		query.setString("ntitle", "%" + ntitle + "%");
		query.setFirstResult((page-1) * size);
		query.setMaxResults(size);
		return query.list();
	}

	@Override
	public Long getCount(String ntitle) {
		String hql = "select count(n) from News n where n.ntitle like :ntitle";
		Query query = getSession().createQuery(hql);
		query.setString("ntitle", "%" + ntitle + "%");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public List<News> queryNews() {
		String hql = "From News n left join fetch n.supplier";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
	
	@Override
	public News queryNewsById(Integer nid) {
		String hql = "From News n left join fetch n.supplier where n.nid=:nid";
		Query query = getSession().createQuery(hql);
		query.setInteger("nid", nid);
		return (News) query.uniqueResult();
	}

}
