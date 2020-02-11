package com.manhnguyen.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.CategoryImpl;
import com.manhnguyen.entity.DanhMucSanPham;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CategoryDAO implements CategoryImpl{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public List<DanhMucSanPham> CategoryList() {
		Session session=sessionFactory.getCurrentSession();
		String sql="from DANHMUCSANPHAM";
		List<DanhMucSanPham>list=session.createQuery(sql).getResultList();
		return list;
	}
	

}
