package com.manhnguyen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.EmployeeDAO;
import com.manhnguyen.daoimpl.EmployeeImpl;
import com.manhnguyen.entity.NhanVien;
@Service
public class EmployeeService implements EmployeeImpl {

	@Autowired
	EmployeeDAO empl;
	public boolean checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		return empl.checkLogin(username, password);
	}

	public boolean insertCustomer(NhanVien nv) {
		// TODO Auto-generated method stub
		return empl.insertCustomer(nv);
	}

}
