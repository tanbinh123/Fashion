package com.manhnguyen.dao;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.DiscountImpl;
import com.manhnguyen.entity.KhuyenMai;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DiscountDAO implements DiscountImpl{

	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public KhuyenMai Discount() {
		Date date = new Date();
		LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		int month = localDate.getMonthValue();
		String season="";
		if(month>=1&& month<=3) {
			season+="Spring";
		}
		if(month>=4&& month<=6) {
			season+="Summer";
		}
		if(month>=7&& month<=9) {
			season+="Fall";
		}
		if(month>=10&& month<=12) {
			season+="Winter";
		}
		
		Session session=sessionFactory.getCurrentSession();
		String sql="from KHUYENMAI where mua ='"+season+"'";
		KhuyenMai discount=(KhuyenMai) session.createQuery(sql).getSingleResult();
		return discount;
	}

}
