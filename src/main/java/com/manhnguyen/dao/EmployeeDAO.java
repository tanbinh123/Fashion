package com.manhnguyen.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.EmployeeImpl;
import com.manhnguyen.entity.NhanVien;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class EmployeeDAO implements EmployeeImpl{
	@Autowired
	SessionFactory sessionFactory;


	@Transactional
	public boolean checkLogin(String username, String password) {
		try {
			Session session=sessionFactory.getCurrentSession();
			NhanVien nv=(NhanVien) session.createQuery("from NHANVIEN Where tendangnhap='"+username+"'and matkhau='"+password+"'").getSingleResult();
			if(nv!=null) {
				return true;
			}else {
				return false;
			}
			}catch(Exception e) {
				return false;
			}
	}


	@Transactional
	public boolean insertCustomer(NhanVien nv) {
		Session session =sessionFactory.getCurrentSession();
		int manv=(Integer) session.save(nv);
		if(manv>0) {
			return true;
		}else {
		return false;
		}
	}

}
