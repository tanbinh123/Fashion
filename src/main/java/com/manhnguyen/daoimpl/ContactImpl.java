package com.manhnguyen.daoimpl;

import java.util.List;

import com.manhnguyen.entity.Contact;

public interface ContactImpl {
	public boolean saveContact(Contact contact);
	public List<Contact>getMessage();

}
