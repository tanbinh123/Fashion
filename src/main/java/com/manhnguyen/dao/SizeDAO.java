package com.manhnguyen.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.SizeImpl;
import com.manhnguyen.entity.SizeSanPham;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SizeDAO implements SizeImpl {

	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<SizeSanPham> getSizeProduct() {
		Session session=sessionFactory.getCurrentSession();
		String sql="from sizesanpham";
		List<SizeSanPham>list=session.createQuery(sql).getResultList();
		return list;
	}

}
