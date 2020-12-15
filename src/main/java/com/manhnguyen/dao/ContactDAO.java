package com.manhnguyen.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.manhnguyen.daoimpl.ContactImpl;
import com.manhnguyen.entity.Contact;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ContactDAO implements ContactImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean saveContact(Contact contact) {
		Session session=sessionFactory.getCurrentSession();
		int i=(Integer) session.save(contact);
		if(i>0) {
			return true;
		}else {
			return false;
			}
	}

	@Transactional
	public List<Contact> getMessage() {
		Session session=sessionFactory.getCurrentSession();
		String sql="from contact";
		List<Contact>list=session.createQuery(sql).getResultList();
		return list;
	}

}
