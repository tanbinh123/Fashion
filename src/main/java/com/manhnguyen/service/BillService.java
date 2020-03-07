package com.manhnguyen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.BillDAO;
import com.manhnguyen.daoimpl.BillImpl;
import com.manhnguyen.entity.HoaDon;
@Service
public class BillService implements BillImpl {

	@Autowired
	BillDAO billDAO;
	public int addBillCustomer(HoaDon hd) {
		// TODO Auto-generated method stub
		return billDAO.addBillCustomer(hd);
	}

}
