package com.manhnguyen.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.BillImpl;
import com.manhnguyen.entity.HoaDon;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class BillDAO implements BillImpl{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public int addBillCustomer(HoaDon hd) {
	
		Session session =sessionFactory.getCurrentSession();
		int index=(Integer) session.save(hd);
		if(index>0) {
			return index;
		}
		return 0;
	}

}
