package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.BillDAO;
import com.manhnguyen.daoimpl.BillImpl;
import com.manhnguyen.entity.Charts;
import com.manhnguyen.entity.HoaDon;
@Service
public class BillService implements BillImpl {

	@Autowired
	BillDAO billDAO;
	public int addBillCustomer(HoaDon hd) {
		// TODO Auto-generated method stub
		return billDAO.addBillCustomer(hd);
	}
	public List<Charts> list() {
		// TODO Auto-generated method stub
		 return billDAO.list();
	}
	public List<HoaDon> getListCheckOut() {
		// TODO Auto-generated method stub
		return billDAO.getListCheckOut();
	}
	public int AcceptOrder(int id) {
		// TODO Auto-generated method stub
		return billDAO.AcceptOrder(id);
	}
	

}
