package com.manhnguyen.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
	@Transactional
	public Double totalBill(int index) {
		Session session=sessionFactory.getCurrentSession();
		//index ==1 select total month
		//index !=1 select total year
		String sql="";
		if(index==1) {
			 sql+="SELECT sum(giatien) FROM chitiethoadon where month(ngayhd)=month(sysdate())";
		}else {
			 sql+="SELECT sum(giatien) FROM chitiethoadon where year(ngayhd)=year(sysdate())";
		}
		
		Double x= Double.parseDouble((String) session.createQuery(sql).getSingleResult());
		//System.out.println(x);

		return x;
	}
	@Transactional
	public List<ChiTietHoaDon> getBillDetail(int index) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String sql="from chitiethoadon m where m.chiTietHoaDonId.mahoadon="+index;
		List<ChiTietHoaDon> cthdChiTietHoaDonId=session.createQuery(sql).getResultList();
		return cthdChiTietHoaDonId;
	}

	
	

}
