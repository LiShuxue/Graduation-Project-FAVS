package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Buy;
import com.favs.bean.News;
import com.favs.service.BuyService;

@Service("buyService")
public class BuyServiceImpl extends BaseServiceImpl<Buy> implements BuyService {
	@Override
	public void deleteByIds(String ids) {
		String hql = "delete from Buy where bid in (" + ids + ")";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}

	@Override
	public List<Buy> pagingQueryJoinConsumer(String btitle, int page, int size) {
		String hql = "From Buy b left join fetch b.consumer where b.btitle like :btitle";
		Query query = getSession().createQuery(hql);
		query.setString("btitle", "%" + btitle + "%");
		query.setFirstResult((page-1) * size);
		query.setMaxResults(size);
		return query.list();
	}

	@Override
	public Long getCount(String btitle) {
		String hql = "select count(b) from Buy b where b.btitle like :btitle";
		Query query = getSession().createQuery(hql);
		query.setString("btitle", "%" + btitle + "%");
		return (Long) query.uniqueResult();
	}

	@Override
	public List<Buy> queryBuy() {
		String hql = "From Buy b left join fetch b.consumer";
		Query query = getSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Buy queryBuyById(Integer bid) {
		String hql = "From Buy b left join fetch b.consumer where b.bid=:bid";
		Query query = getSession().createQuery(hql);
		query.setInteger("bid", bid);
		return (Buy) query.uniqueResult();
	}

}
