package com.manhnguyen.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.ProductImpl;
import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.entity.ChiTietHoaDonId;
import com.manhnguyen.entity.ChiTietSanPham;
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
	@Transactional
	public List<SanPham> getListProductShoppage(int id,int start) {
		List <SanPham>list=new ArrayList<SanPham>();
		if(id<0) {
			Session session=sessionFactory.getCurrentSession();
			String sql="from SANPHAM";
			list= session.createQuery(sql).getResultList();
		}
		if(id==2) {
			Session session=sessionFactory.getCurrentSession();
			String sql="from SANPHAM order by TENSANPHAM asc";
			list= session.createQuery(sql).setFirstResult(start).setMaxResults(9).getResultList();
			
		}
		if(id==3) {
			Session session=sessionFactory.getCurrentSession();
			String sql="from SANPHAM";
			list=session.createQuery(sql).getResultList();
		}
		return list;
		
	}
	@org.springframework.transaction.annotation.Transactional
	public List<SanPham> getList_Category(int id) {
		Session session=sessionFactory.getCurrentSession();
		String sql="from SANPHAM sp where sp. danhMucSanPham.madanhmuc='"+id+"'";
		List<SanPham>list=session.createQuery(sql).getResultList();
		return list;
	}
	@Transactional
	public SanPham getDetail(int id) {
		Session session=sessionFactory.getCurrentSession();
		String sql="from SANPHAM where MASANPHAM='"+id+"'";
		SanPham product=(SanPham) session.createQuery(sql).getSingleResult();
		return product;
	}
	@Transactional 
	public List<SanPham> search(String key) {
		Session session=sessionFactory.getCurrentSession();
		String sql="from SANPHAM where TENSANPHAM like '%"+key+"%' or GIATIEN like '%"+key+"%' or GIANHCHO like'%"+key
				+"%' or MOTA like '%"+key+"%'";
		List<SanPham>list=session.createQuery(sql).getResultList();
		
		return list;
	}
	@Transactional
	public boolean deleteProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		SanPham sp=new SanPham();
		sp.setMasanpham(id);
		ChiTietSanPham ctspChiTietSanPham=new ChiTietSanPham();
		ctspChiTietSanPham.setSanpham(sp);
		session.delete(ctspChiTietSanPham);
		session.delete(sp);
		return false;
	}
	@Transactional
	public int addProduct(SanPham sp) {
		Session session=sessionFactory.getCurrentSession();
		session.save(sp);
		return 0;
	}
	@Transactional
	public SanPham getListProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		String sql="from SANPHAM sp where sp.masanpham ="+id;
		SanPham product= (SanPham) session.createQuery(sql).getSingleResult();
		return product;
	}
	@Transactional
	public boolean updateProduct(SanPham sp) {
		Session session=sessionFactory.getCurrentSession();
		session.update(sp);
		return false;
		
	}
	

}
