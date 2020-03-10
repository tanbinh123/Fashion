package com.manhnguyen.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.BillImpl;
import com.manhnguyen.entity.Charts;
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

	@Transactional
	public List<Charts> list() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String sql="select sum(giatien),month(ngayhd) from CHITIETHOADON group by month(ngayhd) order by month(ngayhd) asc";
	    Query sumQuery = session.createQuery(sql);
	    List<Object[]>list=sumQuery.list();
	    List<Charts>listex=new ArrayList<Charts>();
	    for (Object[] objects : list) {
			String price=objects[0].toString();
			String month=objects[1].toString();
			Charts charts=new Charts();
			charts.setMonth(Integer.parseInt(month));
			charts.setPrice(Double.parseDouble(price)*100);
			listex.add(charts);
			
		}
	  
	    return listex;
	}
	

}
