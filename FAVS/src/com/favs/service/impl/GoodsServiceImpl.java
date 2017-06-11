package com.favs.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.favs.bean.Goods;
import com.favs.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl extends BaseServiceImpl<Goods> implements GoodsService {

	@Override
	public void deleteByIds(String ids) {
		String hql = "delete from Goods where gid in (" + ids + ")";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}

	@Override
	public List<Goods> pagingQueryJoinGtypeAndSupplier(String gname, int page, int size) {
		String hql = "From Goods g left join fetch g.gtype left join fetch g.supplier where g.gname like :gname";
		Query query = getSession().createQuery(hql);
		query.setString("gname", "%" + gname + "%");
		query.setFirstResult((page-1) * size);
		query.setMaxResults(size);
		return query.list();
	}

	@Override
	public Long getCount(String gname) {
		String hql = "select count(g) from Goods g where g.gname like :gname";
		Query query = getSession().createQuery(hql);
		query.setString("gname", "%" + gname + "%");
		return (Long) query.uniqueResult();
	}

	@Override
	public List<Goods> queryByGtypeid(int gtypeid) {
		String hql = "From Goods g join fetch g.gtype where g.recommendation=true and g.gtype.gtypeid=:gtypeid order by g.gid desc";
		Query query = getSession().createQuery(hql);
		query.setInteger("gtypeid", gtypeid);
		query.setFirstResult(0);
		query.setMaxResults(4);
		return query.list();
	}
	
	@Override
	public List<Goods> queryByName(String gname) {
		String hql = "From Goods g where g.gname like :gname";
		Query query = getSession().createQuery(hql);
		query.setString("gname", "%" + gname + "%");
		return query.list();
	}
	
	@Override
	public List<Goods> queryByGtypeidAndSupp(int gtypeid, int sid) {
		String hql = "From Goods g join fetch g.gtype join fetch g.supplier where g.gtype.gtypeid=:gtypeid and g.supplier.sid=:sid order by g.gid desc";
		Query query = getSession().createQuery(hql);
		query.setInteger("gtypeid", gtypeid);
		query.setInteger("sid", sid);
		return query.list();
	}

}
