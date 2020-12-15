package com.manhnguyen.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.ColorImpl;
import com.manhnguyen.entity.MauSanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ColorDAO implements ColorImpl {

	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<MauSanPham> colorList() {
		
		Session session=sessionFactory.getCurrentSession();
		String sql="from mausanpham";
		List<MauSanPham>list=session.createQuery(sql).getResultList();
		// TODO Auto-generated method stub
		return list;
	}

}
