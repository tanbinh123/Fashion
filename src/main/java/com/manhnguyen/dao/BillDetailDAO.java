package com.manhnguyen.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.BillDetail;
import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.entity.ChiTietHoaDonId;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class BillDetailDAO implements BillDetail{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addBillDetail(ChiTietHoaDon cthd) {
		Session session=sessionFactory.getCurrentSession();
		ChiTietHoaDonId id=(ChiTietHoaDonId) session.save(cthd);
		if(id!=null) {
			return true;
			
		}
		return false;
	}
	

}
