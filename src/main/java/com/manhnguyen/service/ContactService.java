package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.ContactDAO;
import com.manhnguyen.daoimpl.ContactImpl;
import com.manhnguyen.entity.Contact;
@Service
public class ContactService implements ContactImpl {

	@Autowired
	ContactDAO contactDAO;

	public boolean saveContact(Contact contact) {
		// TODO Auto-generated method stub
		return contactDAO.saveContact(contact);
	}

	public List<Contact> getMessage() {
		// TODO Auto-generated method stub
		return contactDAO.getMessage();
	}

}
