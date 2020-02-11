package com.manhnguyen.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.ProductImpl;
import com.manhnguyen.entity.SanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ProductDAO implements ProductImpl{

	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<SanPham> getListProduct() {
		Session session=sessionFactory.getCurrentSession();
		String sql="from SANPHAM Limit";
		// load 4 product for home page 
		List<SanPham> list= session.createQuery(sql).setFirstResult(0).setMaxResults(4).getResultList();
		return list;
	}
	

}
